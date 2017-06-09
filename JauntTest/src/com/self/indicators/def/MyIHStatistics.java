package com.self.indicators.def;

public interface MyIHStatistics {

	/**
	 * 返回一个 IHInstrument 对象，它表示这次更新是针对哪一个股票
	 * 
	 * @return
	 */
	MyIHInstrument getInstrument();

	/**
	 * 返回最新的�?交价
	 * 
	 * @return
	 */
	double getLastPrice();

	/**
	 * 返回当�?最高�?交价。在�?日回测中，它总是返回当日的最高�?交价。
	 * 
	 * @return
	 */
	double getHighPrice();

	/**
	 * 返回当�?最低�?交价。在�?日回测中，它总是返回当日的最低�?交价。
	 * 
	 * @return
	 */
	double getLowPrice();

	/**
	 * 返回开盘价。
	 * 
	 * @return
	 */
	double getOpeningPrice();

	/**
	 * 返回收盘价。
	 * 
	 * @return
	 */
	double getClosingPrice();

	/**
	 * 返回当日总交易的股数。
	 * 
	 * @return
	 */
	double getTurnoverVolume();

	/**
	 * vwap是volume weighted average price（�?交�?加�?�平�?�价）的简称，以�?�都会用“vwap�?�?�代表这个概念。
	 * 
	 * @param numTicks
	 * @param tickPeriod
	 * @return
	 */
	double vwap(int numTicks, MyHPeriod tickPeriod);

	/**
	 * 这个方法返回指定区间的移动平�?�值。mavg是moving average的简写，我们之�?�也会用mavg�?�代表这个概念
	 * 
	 * @param numTicks
	 * @param tickPeriod
	 * @return
	 */
	double mavg(int numTicks, MyHPeriod tickPeriod);

	/**
	 * 用�?�访问曾�?收到过的行情，这个方法是�?�常便�?�的。目�?我们�?�支�?由当�?时间开始倒数numTicks个时间段，并且包括当�?时间。目�?�?�支�?�?日回测，
	 * 所以MyHPeriod�?�能�?�MyHPeriod
	 * .Day。它返回了一个历�?�行情包，�?�有IHStatistics的�?�个属性值，但是没有vwap或mavg这些需�?计算�?能产生的值
	 * 。请�?�考关于MyIHStatisticsHistory的章节。
	 * 
	 * @param numTicks
	 * @param tickPeriod
	 * @return
	 */
	MyIHStatisticsHistory history(int numTicks, MyHPeriod tickPeriod);
}
