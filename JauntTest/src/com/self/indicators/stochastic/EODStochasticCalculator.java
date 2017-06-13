package com.self.indicators.stochastic;

import java.util.NoSuchElementException;

import com.self.indicators.def.dataobjects.IndicatorsDBHelper;
import com.self.main.IndicatorsGlobal;

import eu.verdelhan.ta4j.Decimal;
import eu.verdelhan.ta4j.Rule;
import eu.verdelhan.ta4j.TimeSeries;
import eu.verdelhan.ta4j.indicators.CachedIndicator;
import eu.verdelhan.ta4j.indicators.oscillators.StochasticOscillatorDIndicator;
import eu.verdelhan.ta4j.indicators.oscillators.StochasticOscillatorKIndicator;
import eu.verdelhan.ta4j.indicators.simple.ClosePriceIndicator;
import eu.verdelhan.ta4j.indicators.trackers.EMAIndicator;
import eu.verdelhan.ta4j.trading.rules.OverIndicatorRule;
import eu.verdelhan.ta4j.trading.rules.UnderIndicatorRule;

public class EODStochasticCalculator {

	
	public static void main(String[] args) throws NoSuchElementException, IllegalStateException, Exception {
		
		IndicatorsGlobal indicatorsGlobal = IndicatorsGlobal.getInstance();
		
		String symbol = "SBIN";
		
		IndicatorsDBHelper indicatorsDBHelper = new IndicatorsDBHelper(indicatorsGlobal.getPool());
		
		indicatorsDBHelper.getIndicatorsBaseData(symbol,5);
		
		TimeSeries data = new TimeSeries(indicatorsDBHelper.getTicks());


        StochasticOscillatorKIndicator sof = new StochasticOscillatorKIndicator
        										(data, 14);
        StochasticOscillatorDIndicator sod = new StochasticOscillatorDIndicator
				(sof);

        int startDay = data.getBegin() + 14;
		
		int endDay = data.getEnd();
		
		EODStochasticCalculator calculator = new EODStochasticCalculator();
		
		int currentMarketTrend = calculator.checkMarketTrend(data,endDay);
		
		int currentSignal = calculator.generateSignalForIndex(sof,currentMarketTrend,calculator,sod,endDay);

		
		// insert into DB
		int signalReferenceId = indicatorsDBHelper.insertCurrentStochasticSignal
				(symbol,data.getTick(endDay).getEndTime(),
				currentMarketTrend,currentSignal,2);
		
			
		if(currentSignal != 0)
		{

		for (int i = endDay-1; i >= startDay; i--) {
			
			int marketTrend = calculator.checkMarketTrend(data,i);
			
			if(marketTrend == currentMarketTrend)
			{
				int signal = calculator.generateSignalForIndex(sof,marketTrend,calculator,sod,i);
				
				if(signal == currentSignal)
				{
					// insert into DB
					indicatorsDBHelper.insertBackTestStochasticSignal(signalReferenceId,symbol,
							data.getTick(i).getEndTime(),
							currentMarketTrend,currentSignal,2);
				}

			}
			

			/*value = sof.getValue(i);
			System.out.println(" value for i = "+i+" is- "+value);*/			
		}
		
		}
		
		
	}
	

	
	private int generateSignalForIndex(StochasticOscillatorKIndicator sof, int marketTrend, EODStochasticCalculator calculator
			, StochasticOscillatorDIndicator sod,int index) {
		
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
			StochasticOscillatorDIndicator sod, int index) {
		// TODO Auto-generated method stub
		
		if(marketTrend == 1)
			
		{
			Decimal currentValueD = sod.getValue(index);
			
			if(currentValueD.toDouble() > 50) return 0; // Indicator did not cross 50 from above, return no signal

			for (int i = index; i <= index+14; i++) {
				currentValueD = sod.getValue(i);

				// Indicator was above 80, and it did cross 50 from above, return -1 signal				
				
				if(currentValueD.toDouble() >= 80) return -1;

			}

		}
		
		if(marketTrend == -1)
			
		{
			Decimal currentValueD = sod.getValue(index);
			
			if(currentValueD.toDouble() < 50) return 0; // Indicator did not cross 50 from below, return no signal

			for (int i = index; i <= index+14; i++) {
				currentValueD = sod.getValue(i);
				
				// Indicator was below 200, and it did cross 50 from below, return 1 signal				

				if(currentValueD.toDouble() <= 20) return -1;

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
        
        Rule ovRule = new OverIndicatorRule(shortEma, longEma);
        
        if (ovRule.isSatisfied(index))
        	return 1;
        
        Rule uiRule = new UnderIndicatorRule(shortEma, longEma);
        
        
        if (uiRule.isSatisfied(index))
        	return -1;
        
        return 0;
        
		
		
		
	}
	
	
}
