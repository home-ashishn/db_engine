package com.self.indicators.db.helper;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.NoSuchElementException;

import org.apache.commons.pool.ObjectPool;

import com.self.dbconnection.MySqlPoolableException;
import com.self.main.EODGlobal;

import au.com.bytecode.opencsv.CSVReader;
import au.com.bytecode.opencsv.CSVWriter;

public class EODCycleDBHelper {

	// private static final Log LOG =
	// LogFactory.getLog(ExampleClassUsesMySQLConnectionPool.class);
	private final ObjectPool connPool;

	public EODCycleDBHelper(ObjectPool connPool) {
		this.connPool = connPool;
	}

	public List<String> getTop50Equities(int retryCount)
			throws NoSuchElementException, IllegalStateException, Exception {

		List<String> listSymbol = new ArrayList<String>();

		if (retryCount < 0) {
			return listSymbol;
		}

		Connection connection = null;
		ResultSet res = null;

		/*
		 * String sql = "SELECT SYMBOL FROM engine_ea.equity_data_main a " +
		 * "WHERE a.CURR_DATE = (SELECT max(b.curr_date) FROM engine_ea.equity_data_main b) "
		 * + "order by a.TURNOVER desc " + "limit 50";
		 */

		String sql = "SELECT SYMBOL FROM engine_ea.equity_data_main_top50 where done = 0";

		while (connection == null || connection.isClosed()) {
			connection = (Connection) connPool.borrowObject();
		}
		connection.setAutoCommit(true);

		PreparedStatement ps = connection.prepareStatement(sql);

		try {

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {

				String symbolValue = rs.getString("SYMBOL");

				listSymbol.add(symbolValue);

			}
			ps.close();
			connection.close();

		} catch (Exception e) {
			e.printStackTrace();
			getTop50Equities(retryCount--);
			throw new MySqlPoolableException("Failed to borrow connection from the pool", e);
		} finally {
			safeClose(res);
			safeClose(ps);
			safeClose(connection);
		}

		return listSymbol;

	}

	private void safeClose(Connection conn) {
		if (conn != null) {
			try {
				connPool.returnObject(conn);
			} catch (Exception e) {
				// LOG.warn("Failed to return the connection to the pool", e);
			}
		}
	}

	private void safeClose(ResultSet res) {
		if (res != null) {
			try {
				res.close();
			} catch (SQLException e) {
				// LOG.warn("Failed to close databse resultset", e);
			}
		}
	}

	private void safeClose(Statement st) {
		if (st != null) {
			try {
				st.close();
			} catch (SQLException e) {
				// LOG.warn("Failed to close databse statment", e);
			}
		}
	}

	public static void main(String[] args) throws NoSuchElementException, IllegalStateException, Exception {
		/*
		 * 
		 * ObjectPool pool; pool = initMySqlConnectionPool();
		 * 
		 * IndicatorsDBHelper indicatorsDBHelper = new IndicatorsDBHelper(pool);
		 * 
		 * indicatorsDBHelper.getIndicatorsBaseData(5);
		 * 
		 */

		EODGlobal eodGlobal = EODGlobal.getInstance();

		EODCycleDBHelper eodCycleDBHelper = new EODCycleDBHelper(eodGlobal.getPool());

		String folderPath = "D:\\NSE_Downloads\\Equity_Daily";

		File folder = new File(folderPath);

		if (folder.isDirectory()) {
			File[] files = folder.listFiles();

			String filePath = files[0].getAbsolutePath();

			eodCycleDBHelper.loadDataToDB(filePath, true, 5);

			Thread.sleep(5000);

		}

		eodCycleDBHelper.getTop50Equities(5);

	}

	/*
	 * private void removeHeader(String filePath) throws IOException {
	 * 
	 * CSVReader reader2 = new CSVReader(new FileReader(filePath));
	 * List<String[]> allElements = reader2.readAll(); allElements.remove(0);
	 * FileWriter sw = new FileWriter(filePath); CSVWriter writer = new
	 * CSVWriter(sw); writer.writeAll(allElements); reader2.close();
	 * writer.close();
	 * 
	 * }
	 */

	private static void removeHeader(String string) throws IOException {
		File inputFile = new File(string);
		File tempFile = new File(string + "1");

		BufferedReader reader = new BufferedReader(new FileReader(inputFile));
		BufferedWriter writer = new BufferedWriter(new FileWriter(tempFile));

		String currentLine;

		// boolean fileAlreadyProcessed = false;

		while ((currentLine = reader.readLine()) != null) {
			// trim newline when comparing with lineToRemove
			String trimmedLine = currentLine.trim();

			if (trimmedLine.contains("DATE") || !trimmedLine.contains("EQ")) {
				continue;
			}

			trimmedLine = trimmedLine.replace("\"", "") + "\n";

			writer.write(trimmedLine);
		}

		writer.flush();

		writer.close();
		reader.close();

		if (!inputFile.delete()) {
			System.out.println("Could not delete file-" + string);
			return;
		}
		if (!tempFile.renameTo(inputFile)) {
			System.out.println("Could not rename file");
		}

	}

	public void loadDataToDB(String filePath, boolean isKeep50, int retryCount) throws Exception {

		// filePath = filePath.replace("\\", "\\\\");
		filePath = filePath.replace("\\", "/");

		removeHeader(filePath);

		if (retryCount < 0) {
			return;
		}

		Connection connection = null;
		ResultSet res = null;

		String sqlDelete = "delete from engine_ea.equity_data_main_temporary";

		String sql = "LOAD DATA LOCAL INFILE '" + filePath + "' " + "INTO TABLE equity_data_main_temporary "
				+ "FIELDS TERMINATED BY ',' "
				// + "OPTIONALLY ENCLOSED BY '\"' "
				// + " LINES TERMINATED BY '\r\n' "
				// + "IGNORE 1 LINES "
				+ "(SYMBOL,SERIES,@my_date,PREV_CLOSE,OPEN_PRICE,HIGH_PRICE,LOW_PRICE,LAST_PRICE,CLOSE_PRICE,"
				+ "AVERAGE_PRICE,TOTAL_TRADED_QUANTITY,TURNOVER,NO_OF_TRADES,DELIVERABLE_QTY,"
				+ "PERCENT_DELIVERABLE_QTY) " + "set curr_date = str_to_date(@my_date,'%d-%b-%Y')";

		while (connection == null || connection.isClosed()) {
			connection = (Connection) connPool.borrowObject();
		}

		Statement ps1 = connection.createStatement();

		Statement ps = connection.createStatement();

		CallableStatement callSt = connection.prepareCall("call engine_ea.transfer_equity_data()");

		CallableStatement callSt1 = connection.prepareCall("call engine_ea.keep_top50()");

		connection.setAutoCommit(true);

		try {

			ps1.executeUpdate(sqlDelete);

			ps1.close();

			// connection.commit();

			ps.executeUpdate(sql);

			// connection.commit();

			ps.close();

			callSt.execute();

			callSt.close();

			// connection.commit();

			if (isKeep50) {
				callSt1.execute();

			}

			callSt1.close();

			// connection.commit();

			connection.setAutoCommit(true);

			connection.close();

		} catch (Exception e) {
			e.printStackTrace();
			loadDataToDB(filePath, isKeep50, retryCount--);
			throw new MySqlPoolableException("Failed to borrow connection from the pool", e);
		} finally {
			safeClose(res);
			safeClose(ps);
			safeClose(connection);
		}

	}

}
