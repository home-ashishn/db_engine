package com.self.indicators.def.dataobjects;

import org.joda.time.DateTime;

public class IndicatorsBackTestData {
	
	
	private int signalReferenceId;
	private String symbol;
	private DateTime endTime; 
	private int currentMarketTrend;
	private int currentSignal;
	
	
	public int getSignalReferenceId() {
		return signalReferenceId;
	}
	public void setSignalReferenceId(int signalReferenceId) {
		this.signalReferenceId = signalReferenceId;
	}
	public String getSymbol() {
		return symbol;
	}
	public void setSymbol(String symbol) {
		this.symbol = symbol;
	}
	public DateTime getEndTime() {
		return endTime;
	}
	public void setEndTime(DateTime endTime) {
		this.endTime = endTime;
	}
	public int getCurrentMarketTrend() {
		return currentMarketTrend;
	}
	public void setCurrentMarketTrend(int currentMarketTrend) {
		this.currentMarketTrend = currentMarketTrend;
	}
	public int getCurrentSignal() {
		return currentSignal;
	}
	public void setCurrentSignal(int currentSignal) {
		this.currentSignal = currentSignal;
	}

}
