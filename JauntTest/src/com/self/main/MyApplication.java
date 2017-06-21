package com.self.main;

import java.util.Properties;

import org.apache.commons.pool.ObjectPool;
import org.apache.commons.pool.PoolableObjectFactory;
import org.apache.commons.pool.impl.GenericObjectPool;
import org.apache.commons.pool.impl.GenericObjectPoolFactory;
import org.apache.commons.pool.impl.GenericObjectPool.Config;

import com.self.dbconnection.MySqlPoolableObjectFactory;
import com.self.main.extractor.TradingCycleDataExtractor;

public class MyApplication {
	
	private static ScrapperGlobal scrapperGlobal;
	
	static{
		scrapperGlobal = ScrapperGlobal.getInstance();
	}
	


	
	
	public static void main(String[] args) {
		TradingCycleDataExtractor tradingCycleMain = new TradingCycleDataExtractor();
		tradingCycleMain.executeTradingCycle();
	}


}
