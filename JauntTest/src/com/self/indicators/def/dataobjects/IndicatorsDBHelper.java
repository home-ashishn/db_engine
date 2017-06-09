package com.self.indicators.def.dataobjects;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Properties;

import org.apache.commons.pool.ObjectPool;
import org.apache.commons.pool.PoolableObjectFactory;
import org.apache.commons.pool.impl.GenericObjectPool;
import org.apache.commons.pool.impl.GenericObjectPool.Config;
import org.apache.commons.pool.impl.GenericObjectPoolFactory;

import com.self.dataobjects.LiveOptionDataSymbolNifty;
import com.self.dbconnection.MySqlPoolableException;
import com.self.dbconnection.MySqlPoolableObjectFactory;

public class IndicatorsDBHelper {

	// private static final Log LOG =
	// LogFactory.getLog(ExampleClassUsesMySQLConnectionPool.class);
	private final ObjectPool connPool;
	
	List<Double> high = new ArrayList<Double>();
	List<Double> low = new ArrayList<Double>();
	List<Double> open = new ArrayList<Double>();
	List<Double> close = new ArrayList<Double>();
	List<Double> turnoverVolume = new ArrayList<Double>();

	public IndicatorsDBHelper(ObjectPool connPool) {
		this.connPool = connPool;
	}
		
	
	public void insertOptionData(List<LiveOptionDataSymbolNifty> listLiveOptionDataSymbolNifty,int retryCount)
			throws NoSuchElementException, IllegalStateException, Exception {
		
		if(retryCount < 0)
		{
			return;
		}

		Connection connection = null;
		ResultSet res = null;

		String sql = "replace into option_chain_data_nifty " + "(CYCLE_NO,OPTION_TYPE,STRIKE_PRICE,NET_CHNG,LTP,"
				+ "IMPLIED_VOLATILITY,VOLUME,CHNG_IN_OI,OI)" + " values (?, ?, ?, ?, ?, ?, ?, ?, ?)";

		connection = (Connection) connPool.borrowObject();
		
		connection.setAutoCommit(true);

		PreparedStatement ps = connection.prepareStatement(sql);

		try {

			for (LiveOptionDataSymbolNifty liveOptionDataSymbolNifty : listLiveOptionDataSymbolNifty) {

				try {
					ps.setLong(1, liveOptionDataSymbolNifty.getCycleNumber());
					// ps.setLong(2,
					// liveOptionDataSymbolNifty.getCycleNumber());
					//ps.setString(2, "");
					ps.setString(2, liveOptionDataSymbolNifty.getOptionType());
					ps.setFloat(3, liveOptionDataSymbolNifty.getStrikePrice());
					ps.setFloat(4, liveOptionDataSymbolNifty.getNetChange());
					ps.setFloat(5, liveOptionDataSymbolNifty.getLtp());
					ps.setFloat(6, liveOptionDataSymbolNifty.getImpliedVolatilty());
					ps.setLong(7, liveOptionDataSymbolNifty.getVolume());
					ps.setLong(8, liveOptionDataSymbolNifty.getChangeOI());
					ps.setLong(9, liveOptionDataSymbolNifty.getOi());

					/*
					 * String query = "INSERT INTO option_chain_data_nifty" +
					 * " values(" + liveOptionDataSymbolNifty.getCycleNumber() +
					 * "," //+ liveOptionDataSymbolNifty.getCurrentDate() +
					 * "',"' + "NOW()" + ",'" +
					 * liveOptionDataSymbolNifty.getOptionType() + "'," +
					 * liveOptionDataSymbolNifty.getStrikePrice() + "," +
					 * liveOptionDataSymbolNifty.getNetChange() + "," +
					 * liveOptionDataSymbolNifty.getLtp() + "," +
					 * liveOptionDataSymbolNifty.getImpliedVolatilty() + "," +
					 * liveOptionDataSymbolNifty.getVolume() + "," +
					 * liveOptionDataSymbolNifty.getChangeOI() + "," +
					 * liveOptionDataSymbolNifty.getOi() + ")";
					 */
					ps.addBatch();
				} catch (Exception e) {
					continue;
				}
			}

			ps.executeBatch();
			ps.close();
			connection.close();


		} catch (Exception e) {
			e.printStackTrace();
			insertOptionData(listLiveOptionDataSymbolNifty,retryCount --);
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
	
	
	
	
	
	


	private static ObjectPool initMySqlConnectionPool() {
		Properties properties = new Properties();
		// properties.load(Boot.class.getClassLoader().getResourceAsStream("config.properties"));
		
		String host = "localhost";
		String port = "3306";
		String schema = "engine_indicators";
		String user = "root";
		String password = "root";

		PoolableObjectFactory mySqlPoolableObjectFactory = new MySqlPoolableObjectFactory(host, Integer.parseInt(port),
				schema, user, password);
		Config config = new GenericObjectPool.Config();
		config.maxActive = 10;
		config.testOnBorrow = true;
		config.testWhileIdle = true;
		config.timeBetweenEvictionRunsMillis = 10000;
		config.minEvictableIdleTimeMillis = 60000;

		GenericObjectPoolFactory genericObjectPoolFactory = new GenericObjectPoolFactory(mySqlPoolableObjectFactory,
				config);
		ObjectPool pool = genericObjectPoolFactory.createPool();
		return pool;
	}

	public static void main(String[] args) throws NoSuchElementException, IllegalStateException, Exception {

		ObjectPool pool;
		pool = initMySqlConnectionPool();

		List<LiveOptionDataSymbolNifty> testList = prepareDummyData();

		IndicatorsDBHelper niftyOptionChainDBHelper = new IndicatorsDBHelper(pool);

		niftyOptionChainDBHelper.insertOptionData(testList,1);

	}


	


}
