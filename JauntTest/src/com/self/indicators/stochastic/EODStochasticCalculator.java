package com.self.indicators.stochastic;

import com.self.indicators.def.dataobjects.MyDummyStatistics;

public class EODStochasticCalculator {

	
	public static void main(String[] args) {
		
		MyStochasticsEntrySignalGenerator generator = new MyStochasticsEntrySignalGenerator();
		
		 generator.setPeriod(5);
		 generator.setMaPeriod(9);

		
		int startDay = 6;
		int endDay = 494;
		
		for (int i = startDay; i < endDay; i++) {
			MyDummyStatistics stat = new MyDummyStatistics(i);
			double signal = generator.generateSignal(stat);
			System.out.println(" Signal for i = "+i+" is- "+signal);			
		}
		
		
	}
}
