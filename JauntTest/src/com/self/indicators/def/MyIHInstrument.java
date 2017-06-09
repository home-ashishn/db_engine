package com.self.indicators.def;

public interface MyIHInstrument {

	/**
	 * 返回该股票的唯一标识符，�?�看几个约定
	 * 
	 * @return
	 */
	String getOrderBookID();

	/**
	 * 返回股票�??称。�?�看几个约定。
	 * 
	 * @return
	 */
	String getSymbol();

	/**
	 * 返回股票�??称的简称。在中国市场，这个字段�?大部分时候是股票�??称的拼音首字�?。例如“上海石化�? 的简称是“SHSH�?，“连云港�?则简称“LYG�?。
	 * 
	 * @return
	 */
	String getAbbrevSymbol();

	/**
	 * 返回股票�?手的数�?。在上海�?�深圳�?券交易所，这个数总是100。
	 * 
	 * @return
	 */
	double getRoundLot();
}
