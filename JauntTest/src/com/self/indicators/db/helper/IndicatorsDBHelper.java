package com.self.indicators.db.helper;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.NoSuchElementException;

import org.apache.commons.pool.ObjectPool;
import org.joda.time.DateTime;

import com.self.dbconnection.MySqlPoolableException;
import com.self.indicators.def.dataobjects.IndicatorsBackTestData;

import eu.verdelhan.ta4j.Tick;

public class IndicatorsDBHelper {

	// private static final Log LOG =
	// LogFactory.getLog(ExampleClassUsesMySQLConnectionPool.class);
	private final ObjectPool connPool;

	List<Tick> ticks = new ArrayList<Tick>();
	
	// private static Map<String, List<Tick>> cache = new HashMap<String, List<Tick>>();


	public IndicatorsDBHelper(ObjectPool connPool) {
		this.connPool = connPool;
	}

	public void getIndicatorsBaseData(String symbol, int retryCount)
			throws NoSuchElementException, IllegalStateException, Exception {

		if (retryCount < 0) {
			return;
		}

		Connection connection = null;
		ResultSet res = null;

		String sql = "SELECT CURR_DATE,HIGH_PRICE,LOW_PRICE,OPEN_PRICE,CLOSE_PRICE" + ",TURNOVER"
				+ ",TOTAL_TRADED_QUANTITY" + " FROM engine_indicators.equity_data_indiactors" + " WHERE SYMBOL = '"
				+ symbol + "' " + " ORDER BY CURR_DATE ASC";

		while (connection == null || connection.isClosed()) {
			connection = (Connection) connPool.borrowObject();
		}
		connection.setAutoCommit(true);

		PreparedStatement ps = connection.prepareStatement(sql);

		try {

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {

				DateTime curr_date = new DateTime(rs.getDate("CURR_DATE"));

				double high_price = rs.getInt("HIGH_PRICE");
				double low_price = rs.getInt("LOW_PRICE");
				double open_price = rs.getInt("OPEN_PRICE");
				double close_price = rs.getInt("CLOSE_PRICE");
				double turnover_volume = rs.getInt("TOTAL_TRADED_QUANTITY");

				ticks.add(new Tick(curr_date, open_price, high_price, low_price, close_price, turnover_volume));

			}
			ps.close();
			connection.close();

		} catch (Exception e) {
			e.printStackTrace();
			getIndicatorsBaseData(symbol, retryCount--);
			throw new MySqlPoolableException("Failed to borrow connection from the pool", e);
		} finally {
			safeClose(res);
			safeClose(ps);
			safeClose(connection);
		}

	}

	/*
	 * public List<SomeRecord> getRecords(String sql) throws SQLException,
	 * MySqlPoolableException { Builder<SomeRecord> builder = new
	 * ImmutableList.Builder<SomeRecord>(); Connection conn = null; Statement st
	 * = null; ResultSet res = null; try { conn =
	 * (Connection)connPool.borrowObject(); st = conn.createStatement(); res =
	 * st.executeQuery(sql); while (res.next()) { SomeRecord someRecord = new
	 * SomeRecord(String.valueOf(res.getInt(1)), String.valueOf(res.getInt(2)),
	 * res.getString(3)); builder.add(someRecord); } } catch (SQLException e) {
	 * throw e; } catch (Exception e) { throw new MySqlPoolableException(
	 * "Failed to borrow connection from the pool", e); } finally {
	 * safeClose(res); safeClose(st); safeClose(conn); } return builder.build();
	 * }
	 * 
	 */ private void safeClose(Connection conn) {
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
		 */}

	public List<Tick> getTicks() {
		return ticks;
	}

	public void setTicks(List<Tick> ticks) {
		this.ticks = ticks;
	}

	public int insertCurrentStochasticSignal(String symbol, DateTime endTime, int currentMarketTrend, int currentSignal,
			int retryCount) throws NoSuchElementException, IllegalStateException, Exception {

		if (retryCount < 0) {
			return 0;
		}

		Connection connection = null;

		while (connection == null || connection.isClosed()) {
			connection = (Connection) connPool.borrowObject();
		}

		connection.setAutoCommit(true);

		try {
			return StochasticDBHelper.insertCurrentStochasticSignal(connection, symbol, endTime, currentMarketTrend,
					currentSignal, retryCount);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {

			safeClose(connection);
		}

		return 0;

	}

	public void insertBackTestStochasticSignal(List<IndicatorsBackTestData> listIndicatorsBackTestData, int retryCount)
			throws NoSuchElementException, IllegalStateException, Exception {

		if (retryCount < 0) {
			return;
		}

		Connection connection = null;

		while (connection == null || connection.isClosed()) {
			connection = (Connection) connPool.borrowObject();
		}

		connection.setAutoCommit(true);

		try {
			StochasticDBHelper.insertBackTestStochasticSignal(connection, listIndicatorsBackTestData, retryCount);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {

			safeClose(connection);
		}

	}

	public int insertCurrentRSISignal(String symbol, DateTime endTime, int currentMarketTrend,
			int currentSignal,double stop_loss_level,
			int retryCount) throws NoSuchElementException, IllegalStateException, Exception {

		if (retryCount < 0) {
			return 0;
		}

		Connection connection = null;

		while (connection == null || connection.isClosed()) {
			connection = (Connection) connPool.borrowObject();
		}

		connection.setAutoCommit(true);

		try {
			return RSIDBHelper.insertCurrentRSISignal(connection, symbol, endTime, 
					currentMarketTrend, currentSignal,stop_loss_level,
					retryCount);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {

			safeClose(connection);
		}

		return 0;

	}

	public void insertBackTestRSISignal(List<IndicatorsBackTestData> listIndicatorsBackTestData, int retryCount)
			throws NoSuchElementException, IllegalStateException, Exception {

		if (retryCount < 0) {
			return;
		}

		Connection connection = null;

		while (connection == null || connection.isClosed()) {
			connection = (Connection) connPool.borrowObject();
		}

		connection.setAutoCommit(true);

		try {
			RSIDBHelper.insertBackTestRSISignal(connection, listIndicatorsBackTestData, retryCount);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {

			safeClose(connection);
		}

	}

}
