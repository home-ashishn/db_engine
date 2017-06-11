package com.self.indicators.def.dataobjects;

import com.self.indicators.def.MyIHInstrument;

public class MyDummyInstrument implements MyIHInstrument {

	private String stockCode;

	public MyDummyInstrument(String stockCode) {
		super();
		this.stockCode = stockCode;
	}

	@Override
	public String getOrderBookID() {
		throw new IllegalArgumentException("unimplemented");
	}

	@Override
	public String getSymbol() {
		return stockCode;
	}

	@Override
	public String getAbbrevSymbol() {
		throw new IllegalArgumentException("unimplemented");
	}

	@Override
	public double getRoundLot() {
		throw new IllegalArgumentException("unimplemented");
	}

}
