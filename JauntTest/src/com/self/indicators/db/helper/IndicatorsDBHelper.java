package com.self.indicators.db.helper;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
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
	
	List<Tick> ticksOBV = new ArrayList<Tick>();


	// private static Map<String, List<Tick>> cache = new HashMap<String,
	// List<Tick>>();

	public IndicatorsDBHelper(ObjectPool connPool) {
		this.connPool = connPool;
	}
	
	

/*
	public void getIndicatorsBaseDataForOBV(String symbol, int retryCount)
			throws NoSuchElementException, IllegalStateException, Exception {

		
		 * SET @symbol_in = NULL; SET @endDate = now(); SET @startDate =
		 * date_sub(@endDate,interval 1 year); CALL
		 * `engine_indicators`.`data_accumulation`(
		 * 
		 * @symbol_in, @endDate, @startDate);
		 

		if (retryCount < 0) {
			return;
		}

		Connection connection = null;
		ResultSet res = null;

		String sql = "SELECT CURR_DATE,HIGH_PRICE,LOW_PRICE,OPEN_PRICE,CLOSE_PRICE" + ",TURNOVER"
				+ ",TOTAL_TRADED_QUANTITY" + " FROM engine_indicators.equity_data_indiactors" + " WHERE SYMBOL = '"
				+ symbol + "' " + " ORDER BY CURR_DATE DESC";

		while (connection == null || connection.isClosed()) {
			connection = (Connection) connPool.borrowObject();
		}
		connection.setAutoCommit(true);

		PreparedStatement ps = connection.prepareStatement(sql);

		try {

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {

				DateTime curr_date = new DateTime(rs.getDate("CURR_DATE"));

				double high_price = rs.getFloat("HIGH_PRICE");
				double low_price = rs.getFloat("LOW_PRICE");
				double open_price = rs.getFloat("OPEN_PRICE");
				double close_price = rs.getFloat("CLOSE_PRICE");
				double turnover_volume = rs.getFloat("TOTAL_TRADED_QUANTITY");

				ticksOBV.add(new Tick(curr_date, open_price, high_price, low_price, close_price, turnover_volume));

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


*/
	public void getIndicatorsBaseData(String symbol, int retryCount)
			throws NoSuchElementException, IllegalStateException, Exception {

		ticks = new ArrayList<Tick>();

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

				double high_price = rs.getFloat("HIGH_PRICE");
				double low_price = rs.getFloat("LOW_PRICE");
				double open_price = rs.getFloat("OPEN_PRICE");
				double close_price = rs.getFloat("CLOSE_PRICE");
				double turnover_volume = rs.getFloat("TOTAL_TRADED_QUANTITY");

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
	 */ 

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

	public int insertCurrentRSISignal(String symbol, DateTime endTime, int currentMarketTrend, int currentSignal,
			double stop_loss_level, double stop_loss_level_price, int retryCount)
			throws NoSuchElementException, IllegalStateException, Exception {

		if (retryCount < 0) {
			return 0;
		}

		Connection connection = null;

		while (connection == null || connection.isClosed()) {
			connection = (Connection) connPool.borrowObject();
		}

		connection.setAutoCommit(true);

		try {
			return RSIDBHelper.insertCurrentRSISignal(connection, symbol, endTime, currentMarketTrend, currentSignal,
					stop_loss_level, stop_loss_level_price, retryCount);
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

	public List<String> getTop25Equities(int retryCount)
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

		String sql = "SELECT SYMBOL FROM engine_ea.top_25_equity";

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
			getTop25Equities(retryCount--);
			throw new MySqlPoolableException("Failed to borrow connection from the pool", e);
		} finally {
			safeClose(res);
			safeClose(ps);
			safeClose(connection);
		}

		return listSymbol;

	}


		public void accumulateDataForSymbol(String symbol, int retryCount) throws Exception {

		if (retryCount < 0) {
			return;
		}

		Connection connection = null;

		while (connection == null || connection.isClosed()) {
			connection = (Connection) connPool.borrowObject();
		}

		connection.setAutoCommit(true);

		CallableStatement callSt = connection.prepareCall("call engine_indicators.data_accumulation(?,?,?)");

		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		
		callSt.setString(1, symbol);
		callSt.setString(2, format.format(new Date()));
		callSt.setString(3, getDateRange(new Date(),183,false));

		
		try {
			callSt.execute();
			callSt.close();
		} catch (Exception e) {
			e.printStackTrace();
			accumulateDataForSymbol(symbol, retryCount--);
		} finally {

			safeClose(connection);
		}

	}
	
	

	private String getDateRange(Date date, int i, boolean forward) {
		// TODO Auto-generated method stub

		Calendar cal = Calendar.getInstance();

		cal.setTime(date);

		if (forward) {
			cal.add(Calendar.DATE, i);

		} else {
			cal.add(Calendar.DATE, -1 * i);
		}

		return new SimpleDateFormat("yyyy-MM-dd").format(cal.getTime());

	}

	public void initDB(int retryCount) throws Exception {

		if (retryCount < 0) {
			return;
		}

		Connection connection = null;

		while (connection == null || connection.isClosed()) {
			connection = (Connection) connPool.borrowObject();
		}

		connection.setAutoCommit(true);

		CallableStatement callSt = connection.prepareCall("call engine_indicators.INIT_DB()");

		
		try {
			callSt.execute();
			callSt.close();
		} catch (Exception e) {
			e.printStackTrace();
			initDB(retryCount--);
		} finally {

			safeClose(connection);
		}

	}

	public void calculateIndicatorsConfidence(int retryCount) throws Exception {

		if (retryCount < 0) {
			return;
		}

		Connection connection = null;

		while (connection == null || connection.isClosed()) {
			connection = (Connection) connPool.borrowObject();
		}

		connection.setAutoCommit(true);

		CallableStatement callSt = connection.prepareCall("call engine_indicators.calculate_indicators_confidence_and_calls()");

		
		try {
			callSt.execute();
			callSt.close();
		} catch (Exception e) {
			e.printStackTrace();
			calculateIndicatorsConfidence(retryCount--);
		} finally {

			safeClose(connection);
		}

	}

	
	

	public int insertCurrentOBVSignal(String symbol, DateTime endTime, int currentMarketTrend, int currentSignal,
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
			return OBVDBHelper.insertCurrentOBVSignal(connection, symbol, endTime, currentMarketTrend,
					currentSignal, retryCount);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {

			safeClose(connection);
		}

		return 0;

	}

	public void insertBackTestOBVSignal(List<IndicatorsBackTestData> listIndicatorsBackTestData, int retryCount)
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
			OBVDBHelper.insertBackTestOBVSignal(connection, listIndicatorsBackTestData, retryCount);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {

			safeClose(connection);
		}

	}




	public int insertCurrentPercentBSignal(String symbol, DateTime endTime 
			, int currentSignal,int retryCount) throws NoSuchElementException, IllegalStateException, Exception {

		if (retryCount < 0) {
			return 0;
		}

		Connection connection = null;

		while (connection == null || connection.isClosed()) {
			connection = (Connection) connPool.borrowObject();
		}

		connection.setAutoCommit(true);

		try {
			return PercentBDBHelper.insertCurrentPercentBSignal(connection, 
					symbol, endTime,
					currentSignal, retryCount);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {

			safeClose(connection);
		}

		return 0;

	}

	public void insertBackTestPercentBSignal(List<IndicatorsBackTestData> listIndicatorsBackTestData, int retryCount)
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
			PercentBDBHelper.insertBackTestPercentBSignal(connection, listIndicatorsBackTestData, retryCount);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {

			safeClose(connection);
		}

	}





	public List<Tick> getTicksOBV() {
		return ticksOBV;
	}




	public void setTicksOBV(List<Tick> ticksOBV) {
		this.ticksOBV = ticksOBV;
	}



	public ObjectPool getConnPool() {
		return connPool;
	}





}
