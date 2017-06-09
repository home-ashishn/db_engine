package com.self.indicators.stochastic;

import com.self.indicators.def.MyIHStatistics;

public interface MyEntrySignalGenerator {

	/**
	 * @param stat
	 * @return 信�?�强度, [-1,1], �?对值越大强度越大, <0开空头寸, >0开多头寸, 0�?动
	 */
	double generateSignal(MyIHStatistics stat);

}
