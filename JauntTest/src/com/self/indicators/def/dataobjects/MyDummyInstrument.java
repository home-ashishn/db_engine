package com.self.indicators.def.dataobjects;

import com.ricequant.strategy.def.IHInstrument;

public class MyDummyInstrument implements IHInstrument {

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
