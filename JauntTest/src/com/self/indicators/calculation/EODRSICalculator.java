package com.self.indicators.calculation;

import java.util.ArrayList;
import java.util.List;
import java.util.NoSuchElementException;

import com.self.indicators.db.helper.IndicatorsDBHelper;
import com.self.indicators.def.dataobjects.IndicatorsBackTestData;
import com.self.main.IndicatorsGlobal;

import eu.verdelhan.ta4j.Decimal;
import eu.verdelhan.ta4j.TimeSeries;
import eu.verdelhan.ta4j.indicators.simple.ClosePriceIndicator;
import eu.verdelhan.ta4j.indicators.trackers.EMAIndicator;
import eu.verdelhan.ta4j.indicators.trackers.RSIIndicator;

public class EODRSICalculator {

	
	public static void main(String[] args) throws NoSuchElementException, IllegalStateException, Exception {
		
		IndicatorsGlobal indicatorsGlobal = IndicatorsGlobal.getInstance();
		
		String symbol = "SBIN";
		
		IndicatorsDBHelper indicatorsDBHelper = new IndicatorsDBHelper(indicatorsGlobal.getPool());
		
		indicatorsDBHelper.getIndicatorsBaseData(symbol,5);
		
		TimeSeries data = new TimeSeries(indicatorsDBHelper.getTicks());
		
        ClosePriceIndicator closePrice = new ClosePriceIndicator(data);



        RSIIndicator rsi = new RSIIndicator(closePrice, 2);

        int startDay = data.getBegin() + 14;
		
		int endDay = data.getEnd();
		
		EODRSICalculator calculator = new EODRSICalculator();
		
		int currentMarketTrend = calculator.checkMarketTrend(data,endDay);
		
		int currentSignal = 0; // calculator.generateSignalForIndex(rsi,currentMarketTrend,calculator,sod,endDay);

		
		// insert into DB
		int signalReferenceId = indicatorsDBHelper.insertCurrentRSISignal
				(symbol,data.getTick(endDay).getEndTime(),
				currentMarketTrend,currentSignal,2);
		
			
		if(currentSignal != 0)
		{

				List<IndicatorsBackTestData> listIndicatorsBackTestData = 
						new ArrayList<IndicatorsBackTestData>();
			 
		for (int i = endDay-1; i > startDay; i--) {

				int marketTrend = calculator.checkMarketTrend(data,i);
			
			if(marketTrend == currentMarketTrend)
			{
				int signal = 0; // calculator.generateSignalForIndex(rsi,marketTrend,calculator,sod,i);
				
				if(signal == currentSignal)
				{
					// insert into DB
					
					IndicatorsBackTestData indicatorsBackTestData = new IndicatorsBackTestData();
					
					indicatorsBackTestData.setSignalReferenceId(signalReferenceId);
					indicatorsBackTestData.setSymbol(symbol);
					indicatorsBackTestData.setEndTime(data.getTick(i).getEndTime());
					indicatorsBackTestData.setCurrentMarketTrend(marketTrend);
					indicatorsBackTestData.setCurrentSignal(signal);
					
					listIndicatorsBackTestData.add(indicatorsBackTestData);
					
				}

			}
			

			/*value = sof.getValue(i);
			System.out.println(" value for i = "+i+" is- "+value);*/			
		}
		
		indicatorsDBHelper.insertBackTestRSISignal(listIndicatorsBackTestData,2);
		
		}
		
		
	}
	

	
	private int generateSignalForIndex(RSIIndicator sof, int marketTrend, EODRSICalculator calculator
			, RSIIndicator sod,int index) {
		
		Decimal valueK = sof.getValue(index);
		
		int buySellHoldSignal = 0;
		
		if( marketTrend == 0)
		{
			buySellHoldSignal = calculator.checkSignalforSidewaysMarket(valueK);
		}
		else 
			
		{
			buySellHoldSignal = calculator.checkSignalforTrendingMarket(marketTrend,sod,index);
		}
		
		
		return buySellHoldSignal;

		
	}


	private int checkSignalforTrendingMarket(int marketTrend,
			RSIIndicator sod, int index) {
		// TODO Auto-generated method stub
		
		if(marketTrend == 1)
			
		{
			Decimal currentValueD = sod.getValue(index);
			
			if(currentValueD.toDouble() > 50) return 0; // Indicator did not cross 50 from above, return no signal
			
			Decimal prevValueD = null;

			for (int i = index-1; i >= index-14; i--) {
				prevValueD = sod.getValue(i);

				// Indicator was above 80, and it did cross 50 from above, return -1 signal				
				
				if(prevValueD.toDouble() >= 80) return -1;

			}

		}
		
		if(marketTrend == -1)
			
		{
			Decimal currentValueD = sod.getValue(index);
			
			if(currentValueD.toDouble() < 50) return 0; // Indicator did not cross 50 from below, return no signal

			Decimal prevValueD = null;

			for (int i = index-1; i >= index-14; i--) {
				prevValueD = sod.getValue(i);				
				// Indicator was below 200, and it did cross 50 from below, return 1 signal				

				if(prevValueD.toDouble() <= 20) return 1;

			}

		}
		
		
		return 0;
		
	}


	private int checkSignalforSidewaysMarket(Decimal valueK) {

		if(valueK.toDouble() >= 80.0)
			return -1;
		
		if(valueK.toDouble() <= 20.0)
			return 1;
		
		return 0;
	}





	private int checkMarketTrend(TimeSeries series,int index){
		
		
        ClosePriceIndicator closePrice = new ClosePriceIndicator(series);

		
		
        EMAIndicator shortEma = new EMAIndicator(closePrice, 9);
        EMAIndicator longEma = new EMAIndicator(closePrice, 26);
        
        Decimal shortEmaValue = shortEma.getValue(index);
        
        Decimal longEmaValue = longEma.getValue(index);

        if(shortEmaValue.isGreaterThan(longEmaValue.multipliedBy(Decimal.valueOf(1.01))))
        {
        	return 1;

        }
        
        else if(longEmaValue.isGreaterThan(shortEmaValue.multipliedBy(Decimal.valueOf(1.01))))
        	
        {
        	return -1;

        }

        
/*        Rule ovRule = new OverIndicatorRule(shortEma, longEma);
        
        if (ovRule.isSatisfied(index))
        	return 1;
        
        Rule uiRule = new UnderIndicatorRule(shortEma, longEma);
        
        
        if (uiRule.isSatisfied(index))
        	return -1;
*/        
        return 0;
        
		
		
		
	}
	
	
}
