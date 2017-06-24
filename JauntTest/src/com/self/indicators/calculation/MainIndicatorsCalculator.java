package com.self.indicators.calculation;

import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;

import com.self.indicators.db.helper.IndicatorsDBHelper;
import com.self.main.IndicatorsGlobal;

public class MainIndicatorsCalculator {
	
	
	
	
	public void calculateIndicators() throws Exception{
	
		IndicatorsGlobal indicatorsGlobal = IndicatorsGlobal.getInstance();



		IndicatorsDBHelper indicatorsDBHelper = new IndicatorsDBHelper(indicatorsGlobal.getPool());

		
		List<String> symbols = indicatorsDBHelper.getTop25Equities(5);
		
		EODRSICalculator rsiCalc = new EODRSICalculator();
		
		EODStochasticCalculator stoCalc = new EODStochasticCalculator();
		
		indicatorsDBHelper.initDB(5);
		
		for (Iterator<String> iterator = symbols.iterator(); iterator.hasNext();) {
			String symbol = (String) iterator.next();
			
			indicatorsDBHelper.accumulateDataForSymbol(symbol,5);
			
			rsiCalc.calculateCurrentRSIWithBackTest(symbol, false);
			
			stoCalc.calculateCurrentandBackTest(symbol, false);
			
			
		}
		indicatorsDBHelper.accumulateDataForSymbol("",5);

	}
	
	public static void main(String[] args) throws Exception {
		
		MainIndicatorsCalculator mainIndicatorsCalculator = new MainIndicatorsCalculator();
		
		mainIndicatorsCalculator.calculateIndicators();
		
	}

}
