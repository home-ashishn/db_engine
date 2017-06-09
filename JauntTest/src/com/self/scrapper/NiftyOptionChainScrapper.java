package com.self.scrapper;

import java.sql.Time;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.jaunt.Element;
import com.jaunt.JauntException;
import com.jaunt.NotFound;
import com.jaunt.UserAgent;
import com.jaunt.component.Table;
import com.self.dataobjects.LiveOptionDataSymbolNifty;
import com.self.dataobjects.MainContainer;

public class NiftyOptionChainScrapper {

	public MainContainer getNiftyOptionData() {
		
		MainContainer mainContainer = new MainContainer();

		UserAgent userAgent = new UserAgent();

		try {
			userAgent.visit(
					"https://www.nseindia.com/live_market/dynaContent/live_watch/option_chain/optionKeys.jsp?symbol=NIFTY&instrument=-&date=-");


			Element element = userAgent.doc.findFirst("<b>NIFTY"); // find table
																	// element

			float floatNiftyValue = OptionChainScrapperHelper.getNiftyValue(element);
			;

			mainContainer.niftyValue = floatNiftyValue;

			/*
			 * Element table1 = userAgent.doc.findFirst("<table id=octable>");
			 * //find table element
			 * 
			 * Elements tds = table1.findEach("<tr>"); //find non-nested td/th
			 * elements
			 * 
			 * int rowCount = tds.size();
			 * 
			 * System.out.println("rowcount = "+rowCount);
			 */

			Table table = userAgent.doc.getTable("<table id=octable>"); // get
																		// Table
																		// component
																		// via
																		// search
																		// query

			Element testElement = table.getCell(11, 26);

			String testText = testElement.findFirst("<b>").getText();

			Float testRowValue = Float.valueOf(testText);

			Map testRange = getTestRange(floatNiftyValue, testRowValue);

			int upperRow = Integer.parseInt("" + testRange.get("upperRow"));

			int lowerRow = Integer.parseInt("" + testRange.get("lowerRow"));

			int cycleNumber = 1;


			List<LiveOptionDataSymbolNifty> listLiveOptionDataSymbolNifty = new ArrayList<LiveOptionDataSymbolNifty>();

			for (int j = lowerRow + 6; j <= upperRow; j = j + 2) {

				try {

					LiveOptionDataSymbolNifty liveOptionDataSymbolNiftyCall = new LiveOptionDataSymbolNifty();

					liveOptionDataSymbolNiftyCall.setCycleNumber(cycleNumber);

					OptionChainScrapperHelper.fillNiftyCallValue(liveOptionDataSymbolNiftyCall, table, j);

					listLiveOptionDataSymbolNifty.add(liveOptionDataSymbolNiftyCall);
				} catch (Exception e) {
					continue;
				}

			}

			for (int j = lowerRow; j <= (upperRow - 6); j = j + 2) {

				try {

					LiveOptionDataSymbolNifty liveOptionDataSymbolNiftyPut = new LiveOptionDataSymbolNifty();

					liveOptionDataSymbolNiftyPut.setCycleNumber(cycleNumber);

					OptionChainScrapperHelper.fillNiftyPutValue(liveOptionDataSymbolNiftyPut, table, j);

					listLiveOptionDataSymbolNifty.add(liveOptionDataSymbolNiftyPut);

				} catch (Exception e) {
					continue;
				}

			}

			mainContainer.listLiveOptionDataSymbolNifty = listLiveOptionDataSymbolNifty;

		} catch (JauntException e) {
			System.err.println(e);
		}
		
		finally{
			userAgent = null;
		}
		
		return mainContainer;

	}

	private static Map getTestRange(Float niftyValue, Float testRowValue) {

		Map returnMap = new HashMap();

		int referenceValue = Math.round(niftyValue / 100);

		int upperValue = (referenceValue + 4) * 100;

		float diff = upperValue - testRowValue;

		int upperRow = (int) (26 + 2 * (diff / 100));

		int lowerRow = upperRow - 16;

		returnMap.put("upperRow", upperRow);

		returnMap.put("lowerRow", lowerRow);

		return returnMap;
	}

}