package com.self.scrapper;
import java.util.HashMap;
import java.util.Map;

import com.jaunt.Element;
import com.jaunt.NotFound;
import com.jaunt.component.Table;
import com.self.dataobjects.LiveOptionDataSymbolNifty;

public class OptionChainScrapperHelper {
	
	

	static void fillNiftyCallValue(LiveOptionDataSymbolNifty liveOptionDataSymbolNiftyCall, Table table, int j) throws NotFound {
		
		liveOptionDataSymbolNiftyCall.setOptionType("CE");
		
		
		Element test = table.getCell(1, j);

/*		
		System.out.println("test.innerHTML() = "+test.innerHTML());
		
		System.out.println("test.outerHTML() = "+test.outerHTML());

*/		
		
		
		liveOptionDataSymbolNiftyCall.setOi(convertValueToLong(test));

		test = table.getCell(2, j);

		liveOptionDataSymbolNiftyCall.setChangeOI(convertValueToLong(test));

		test = table.getCell(3, j);

		liveOptionDataSymbolNiftyCall.setVolume(convertValueToLong(test));

		test = table.getCell(4, j);

		liveOptionDataSymbolNiftyCall.setImpliedVolatilty(convertValueToFloat(test));

		test = table.getCell(5, j);

		Element href = test.findFirst("<a>");

		liveOptionDataSymbolNiftyCall.setLtp(convertValueToFloat(href));

		test = table.getCell(6, j);

		liveOptionDataSymbolNiftyCall.setNetChange(convertValueToFloat(test));

		test = table.getCell(11, j);

		href = test.findFirst("<b>");

		liveOptionDataSymbolNiftyCall.setStrikePrice(convertValueToFloat(href));
		
	}


	static void fillNiftyPutValue(LiveOptionDataSymbolNifty liveOptionDataSymbolNiftyPut, Table table, int j) throws NotFound {
		
		liveOptionDataSymbolNiftyPut.setOptionType("PE");

		
		Element test = table.getCell(21, j);
		
		

		liveOptionDataSymbolNiftyPut.setOi(convertValueToLong(test));

		test = table.getCell(20, j);

		liveOptionDataSymbolNiftyPut.setChangeOI(convertValueToLong(test));

		test = table.getCell(19, j);

		liveOptionDataSymbolNiftyPut.setVolume(convertValueToLong(test));

		test = table.getCell(18, j);

		liveOptionDataSymbolNiftyPut.setImpliedVolatilty(convertValueToFloat(test));

		test = table.getCell(17, j);

		Element href = test.findFirst("<a>");

		liveOptionDataSymbolNiftyPut.setLtp(convertValueToFloat(href));

		test = table.getCell(16, j);

		liveOptionDataSymbolNiftyPut.setNetChange(convertValueToFloat(test));

		test = table.getCell(11, j);

		href = test.findFirst("<b>");

		liveOptionDataSymbolNiftyPut.setStrikePrice(convertValueToFloat(href));
		
	}
	
	private static Long convertValueToLong(Element test) {

		String testValue = test.getText();

		testValue = testValue.replaceAll(",", "");
		
		testValue = testValue.replaceAll(" ", "");
		
		try
		{
			return Long.parseLong(testValue);
			
		}
		catch (Exception e) {
			return (long) 0;		
			
		}



	}

	private static Float convertValueToFloat(Element test) {

		String testValue = test.getText();

		testValue = testValue.replaceAll(",", "");
		
		testValue = testValue.replaceAll(" ", "");

		try
		{
			return Float.parseFloat(testValue);
			
		}
		catch (Exception e) {
			return (float) 0.0;		
			
		}

	}
	
	private static Float convertValueToFloat(String testValue) {

		testValue = testValue.replaceAll(",", "");
		
		testValue = testValue.replaceAll(" ", "");


		try
		{
			return Float.parseFloat(testValue);
			
		}
		catch (Exception e) {
			return (float) 0.0;		
			
		}
	}


	public static float getNiftyValue(Element element) {
		
		String elementTest = element.getText();
		
		elementTest = elementTest.replace("NIFTY", "");
		
		elementTest = elementTest.replace(" ", "");
		
		float floatNiftyValue = convertValueToFloat(elementTest);
		
		return floatNiftyValue;
		
		
	}


	public static float getSymbolValue(Element element, String symbol) {
		
		String elementTest = element.getText();
		
		elementTest = elementTest.replace(symbol, "");
		
		elementTest = elementTest.replace(" ", "");
		
		float floatNiftyValue = convertValueToFloat(elementTest);
		
		return floatNiftyValue;
		
		
	}
	
	
	
	private static Map getTestRange(Float symbolValue, Table table) throws NotFound {

		Element testElement = table.getCell(11, 5);

		String testText = testElement.findFirst("<b>").getText();

		Float testRowValue = Float.valueOf(testText);
		
		Element testElement1 = table.getCell(11, 6);

		String testText1 = testElement.findFirst("<b>").getText();

		Float testRowValue1 = Float.valueOf(testText);


		int increment = (int) (testRowValue1 - testRowValue);
		
		Map<String, Integer> returnMap = new HashMap();

		int referenceValue = Math.round(symbolValue / increment);

		int upperValue = (referenceValue + 4) * increment;

		float diff = upperValue - testRowValue;

		int upperRow = (int) (5 + (diff / increment));

		int lowerRow = upperRow - 9;

		returnMap.put("upperRow", upperRow);

		returnMap.put("lowerRow", lowerRow);

		return returnMap;
	}



}
