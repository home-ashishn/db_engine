package com.self.indicators.def.dataobjects;

import com.self.indicators.def.MyHPeriod;
import com.self.indicators.def.MyIHStatistics;
import com.self.indicators.def.MyIHStatisticsHistory;

public class MyDummyStatistics implements MyIHStatistics {

	private int startDay;

	private MyIHStatisticsHistory current;

	public MyDummyStatistics(int startDay) {
		super();
		this.startDay = startDay;
		current = MyHistoryDataProvider.getData(startDay, startDay + 2);
	}

/*	@Override
	public IHInstrument getInstrument() {
		return new MyDummyInstrument(stockCode);
	}*/

	@Override
	public double getLastPrice() {
		return current.getOpeningPrice()[1];
	}

	@Override
	public double getHighPrice() {
		return current.getHighPrice()[0];
	}

	@Override
	public double getLowPrice() {
		return current.getLowPrice()[0];
	}

	@Override
	public double getOpeningPrice() {
		return current.getOpeningPrice()[0];
	}

	@Override
	public double getClosingPrice() {
		return current.getClosingPrice()[0];
	}

	@Override
	public double getTurnoverVolume() {
		return current.getTurnoverVolume()[0];
	}

	@Override
	public double vwap(int numTicks, MyHPeriod tickPeriod) {
		throw new IllegalArgumentException("unimplemented");
	}

	@Override
	public double mavg(int numTicks, MyHPeriod tickPeriod) {
		throw new IllegalArgumentException("unimplemented");
	}

	@Override
	public MyIHStatisticsHistory history(int numTicks, MyHPeriod tickPeriod) {
		return MyHistoryDataProvider.getData(startDay - numTicks, startDay);
	}

}
