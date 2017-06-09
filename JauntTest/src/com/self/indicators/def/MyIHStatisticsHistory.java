package com.self.indicators.def;

/**
 * 它们的返回值都是 double[]，数组中的最�?�一�?一定是当�?的数�?�。在�?日回测中，�?�设您想�?从今天起往�?5天内的数�?�（�?�设“今天�?是10�?�星期五，
 * 那么�?5天就是指6�?�到10�?�，周一至周五的这段时间），在回测起始的第一天，您�?�能看到的是这样的数组：[0, 0, 0, 0,
 * 10.5]。在超出您所选的回测区间的部分，那些数字都会被设为0。而第二天，它�?�能会�?��?[0, 0, 0, 10.5,
 * 11]。数�?�按时间顺�?排列，早的在�?�?�。
 * 
 * @author Administrator
 *
 */
public interface MyIHStatisticsHistory {

	double[] getLastPrice();

	double[] getHighPrice();

	double[] getLowPrice();

	double[] getOpeningPrice();

	double[] getClosingPrice();

	double[] getTurnoverVolume();
}
