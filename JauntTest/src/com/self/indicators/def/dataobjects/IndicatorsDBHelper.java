package com.self.indicators.def.dataobjects;

import java.sql.Connection;
import java.sql.Date;
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
import org.joda.time.DateTime;

import com.self.dbconnection.MySqlPoolableException;
import com.self.dbconnection.MySqlPoolableObjectFactory;

import eu.verdelhan.ta4j.Tick;

public class IndicatorsDBHelper {

	// private static final Log LOG =
	// LogFactory.getLog(ExampleClassUsesMySQLConnectionPool.class);
	private final ObjectPool connPool;
	
	List<Double> high = new ArrayList<Double>();
	List<Double> low = new ArrayList<Double>();
	List<Double> open = new ArrayList<Double>();
	List<Double> close = new ArrayList<Double>();
	List<Double> turnoverVolume = new ArrayList<Double>();
    List<Tick> ticks = new ArrayList<Tick>();


	public IndicatorsDBHelper(ObjectPool connPool) {
		this.connPool = connPool;
	}
		
	
	public void getIndicatorsBaseData(int retryCount)
			throws NoSuchElementException, IllegalStateException, Exception {
		
		if(retryCount < 0)
		{
			return;
		}

		Connection connection = null;
		ResultSet res = null;

      String sql = "SELECT CURR_DATE,HIGH_PRICE,LOW_PRICE,OPEN_PRICE,CLOSE_PRICE"
      		+ ",TURNOVER"
      		+ ",TOTAL_TRADED_QUANTITY"
      		+ " FROM engine_indicators.equity_data_indiactors"
      		+ " ORDER BY CURR_DATE DESC";

		connection = (Connection) connPool.borrowObject();
		
		connection.setAutoCommit(true);

		PreparedStatement ps = connection.prepareStatement(sql);

		try {
			
		      ResultSet rs = ps.executeQuery();

		      while (rs.next())
		      {
			   
		    	DateTime curr_date = new DateTime(rs.getDate("CURR_DATE"));

		    	double high_price = rs.getInt("HIGH_PRICE");
		    	double low_price = rs.getInt("LOW_PRICE");
		    	double open_price = rs.getInt("OPEN_PRICE");
		    	double close_price = rs.getInt("CLOSE_PRICE");
		    	double turnover_volume = rs.getInt("TOTAL_TRADED_QUANTITY");
		    	
		    	
		        ticks.add(new Tick(curr_date,open_price,high_price,low_price,
		        		close_price,turnover_volume));


		        high.add(high_price);
		        low.add(low_price);
				open.add(open_price);
				close.add(close_price);
				turnoverVolume.add(turnover_volume);
		      }
			ps.close();
			connection.close();


		} catch (Exception e) {
			e.printStackTrace();
			getIndicatorsBaseData(retryCount --);
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

		IndicatorsDBHelper indicatorsDBHelper = new IndicatorsDBHelper(pool);

		indicatorsDBHelper.getIndicatorsBaseData(5);

	}


	public List<Double> getHigh() {
		return high;
	}


	public void setHigh(List<Double> high) {
		this.high = high;
	}


	public List<Double> getLow() {
		return low;
	}


	public void setLow(List<Double> low) {
		this.low = low;
	}


	public List<Double> getOpen() {
		return open;
	}


	public void setOpen(List<Double> open) {
		this.open = open;
	}


	public List<Double> getClose() {
		return close;
	}


	public void setClose(List<Double> close) {
		this.close = close;
	}


	public List<Double> getTurnoverVolume() {
		return turnoverVolume;
	}


	public void setTurnoverVolume(List<Double> turnoverVolume) {
		this.turnoverVolume = turnoverVolume;
	}


	public List<Tick> getTicks() {
		return ticks;
	}


	public void setTicks(List<Tick> ticks) {
		this.ticks = ticks;
	}


	


}
