package com.self.indicators.def.dataobjects;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import com.self.indicators.def.MyIHStatisticsHistory;
import com.self.main.IndicatorsGlobal;

public class MyHistoryDataProvider {

//	private static FileUtils reader = new FileUtils();

	// private static Map<String, DummyHistoryData> cache = new HashMap<String, DummyHistoryData>();
	
	static MyDummyHistoryData data = null;
	
	public static void getBaseData() {
		

		//String content = reader.readFileAsString(fileName);
		List<Double> high = new ArrayList<Double>();
		List<Double> low = new ArrayList<Double>();
		List<Double> open = new ArrayList<Double>();
		List<Double> close = new ArrayList<Double>();
		List<Double> turnoverVolume = new ArrayList<Double>();
		
		IndicatorsGlobal indicatorsGlobal = IndicatorsGlobal.getInstance();

		IndicatorsDBHelper indicatorsDBHelper = new IndicatorsDBHelper(
				indicatorsGlobal.getPool());

		try {
			indicatorsDBHelper.getIndicatorsBaseData(5);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		high = indicatorsDBHelper.getHigh();
		low = indicatorsDBHelper.getLow();
		open = indicatorsDBHelper.getOpen();
		close = indicatorsDBHelper.getClose();
		turnoverVolume = indicatorsDBHelper.getTurnoverVolume();

		data = new MyDummyHistoryData();
		data.setHighPrice(copy(high.toArray(new Double[high.size()])));
		data.setLowPrice(copy(low.toArray(new Double[low.size()])));
		data.setOpeningPrice(copy(open.toArray(new Double[open.size()])));
		data.setClosingPrice(copy(close.toArray(new Double[close.size()])));
		data.setTurnoverVolume(copy(turnoverVolume.toArray(new Double[turnoverVolume.size()])));

		//cache.put(fileName, data);
	

	}


	public static MyIHStatisticsHistory getData() {
		return getData(null, null);
	}

	public static MyIHStatisticsHistory getData(Integer from, Integer to) {

		// DummyHistoryData data = cache.get(fileName);
		if (data == null)
		{
			getBaseData();
		}

		int fromIndex = from == null ? 0 : from.intValue();
		int toIndex = to == null ? data.getClosingPrice().length : to.intValue();

		MyDummyHistoryData copy = new MyDummyHistoryData();
		copy.setHighPrice(Arrays.copyOfRange(data.getHighPrice(), fromIndex, toIndex));
		copy.setLowPrice(Arrays.copyOfRange(data.getLowPrice(), fromIndex, toIndex));
		copy.setOpeningPrice(Arrays.copyOfRange(data.getOpeningPrice(), fromIndex, toIndex));
		copy.setClosingPrice(Arrays.copyOfRange(data.getClosingPrice(), fromIndex, toIndex));
		copy.setTurnoverVolume(Arrays.copyOfRange(data.getTurnoverVolume(), fromIndex, toIndex));
		return copy;
	
	}

/*	public static int queryMaxDay(String stockCode) {
		getData();
		DummyHistoryData data = cache.get(stockCode);
		return data == null ? 0 : data.getClosingPrice().length;
	}*/

	private static double[] copy(Double[] src) {
		double[] result = new double[src.length];
		for (int i = 0; i < src.length; i++) {
			result[i] = src[i].doubleValue();
		}
		return result;
	}

}
