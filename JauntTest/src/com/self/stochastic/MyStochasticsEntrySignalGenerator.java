package com.self.stochastic;

import com.self.indicators.def.MyHPeriod;
import com.self.indicators.def.MyIHStatistics;
import com.self.indicators.def.MyIHStatisticsHistory;
import com.tictactec.ta.lib.Core;
import com.tictactec.ta.lib.MAType;
import com.tictactec.ta.lib.MInteger;

/**
 * Fast, Slow or Full
 * 
 * There are three versions of the Stochastic Oscillator available on
 * SharpCharts. The Fast Stochastic Oscillator is based on George Lane's
 * original formulas for %K and %D. %K in the fast version that appears rather
 * choppy. %D is the 3-day SMA of %K. In fact, Lane used %D to generate buy or
 * sell signals based on bullish and bearish divergences. Lane asserts that a %D
 * divergence is the “only signal which will cause you to buy or sell.�? Because
 * %D in the Fast Stochastic Oscillator is used for signals, the Slow Stochastic
 * Oscillator was introduced to reflect this emphasis. The Slow Stochastic
 * Oscillator smooths %K with a 3-day SMA, which is exactly what %D is in the
 * Fast Stochastic Oscillator. Notice that %K in the Slow Stochastic Oscillator
 * equals %D in the Fast Stochastic Oscillator (chart 2).
 * 
 * Fast Stochastic Oscillator:
 * 
 * Fast %K = %K basic calculation
 * 
 * Fast %D = 3-period SMA of Fast %K = Slow %K;
 * 
 * Slow Stochastic Oscillator:
 * 
 * Slow %K = Fast %K smoothed with 3-period SMA = Fast %D
 * 
 * Slow %D = 3-period SMA of Slow %K
 * 
 * </br> The Full Stochastic Oscillator is a fully customizable version of the
 * Slow Stochastic Oscillator. Users can set the look-back period, the number of
 * periods to slow %K and the number of periods for the %D moving average. The
 * default parameters were used in these examples: Fast Stochastic Oscillator
 * (14,3), Slow Stochastic Oscillator (14,3) and Full Stochastic Oscillator
 * (14,3,3).
 * 
 * Usually use (14, 3) or (20, 5)
 * 
 * Full Stochastic Oscillator:
 * 
 * Full %K = Fast %K smoothed with X-period SMA
 * 
 * Full %D = X-period SMA of Full %K;
 * 
 * Long positions are typically taken when the %K stochastic rises above 30 and
 * accompanied by a cross above the %D stochastic. Short positions are typically
 * taken when the %K stochastic falls below 80 and is accompanied by a cross
 * below the %D stochastic
 */
public class MyStochasticsEntrySignalGenerator implements MyEntrySignalGenerator {

	private Core core = new Core();

	private int period;

	private int maPeriod;

	private double oversold;

	private double overbought;

	@Override
	public double generateSignal(MyIHStatistics stat) {
		MyIHStatisticsHistory history = stat.history(period + 1, MyHPeriod.Day);
		double[] close = history.getClosingPrice();
		double[] high = history.getHighPrice();
		double[] low = history.getLowPrice();

		double[][] result = computeSlowStochastic(close, high, low, period,
				maPeriod);
		double[] slowK = result[0];
		double[] slowD = result[1];

		double lastSlowK = slowK[result.length - 2];
		double lastSlowD = slowD[result.length - 2];

		double currentSlowK = slowK[result.length - 1];
		double currentSlowD = slowD[result.length - 1];

		// 计算当天的SlowK与SlowD的差值
		double previousDelta = lastSlowK - lastSlowD;
		double delta = currentSlowK - currentSlowD;
		double slowKDelta = currentSlowK - lastSlowK;

		// slowK上�?�, 从下方穿过slowD, slowK > overSold, 买入
		if (slowKDelta > 0 && previousDelta < 0 && delta > 0
				&& currentSlowK > oversold) {
			return 1;
		}
		// slowK下�?, 从上方穿过slowD, slowK < overbought, �?�出
		else if (slowKDelta < 0 && previousDelta > 0 && delta < 0
				&& currentSlowK < overbought) {
			return -1;
		} else {
			return 0;
		}
	}

	/**
	 * 计算SlowStochastic
	 *
	 * @param close
	 * @param high
	 * @param low
	 * @param period
	 * @param maPeriod
	 * @return 2维数组, [0]是slowK, [1]是slowD
	 */
	public double[][] computeSlowStochastic(double[] close, double[] high,
			double[] low, int period, int maPeriod) {
		MInteger begin = new MInteger();
		MInteger length = new MInteger();
		int resultLegnth = close.length - period + 1;
		double[] slowK = new double[resultLegnth];
		double[] slowD = new double[resultLegnth];
		double[][] result = new double[2][resultLegnth];
		result[0] = slowK;
		result[1] = slowD;

		core.stoch(0, close.length - 1, high, low, close, period, maPeriod,
				MAType.Sma, maPeriod, MAType.Sma, begin, length, slowK, slowD);

		return result;
	}
}
