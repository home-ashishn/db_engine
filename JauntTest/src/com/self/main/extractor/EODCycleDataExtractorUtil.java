package com.self.main.extractor;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import org.apache.commons.io.FileUtils;

import com.self.indicators.db.helper.EODCycleDBHelper;
import com.self.main.EODGlobal;
import com.self.seleniumscrapper.EquityCurrentTime;
import com.self.seleniumscrapper.EquityHistorical;

public class EODCycleDataExtractorUtil {

	public EODGlobal eodGlobal;

	public EODCycleDBHelper eodCycleDBHelper;

	public EquityHistorical equityHistorical = null;

	public EquityCurrentTime equityCurrentTime = null;

	public EODCycleDataExtractorUtil() {
		eodGlobal = EODGlobal.getInstance();

		eodCycleDBHelper = new EODCycleDBHelper(eodGlobal.getPool());
	}

	public void downloadDataForSymbolForDateRange(String symbol, Date dateFrom, Date dateTo) throws Exception {

		Date dateCounter = dateFrom;

		String folderPath = "D:\\NSE_Downloads\\Equity_Historical";

		if (equityHistorical == null) {
			equityHistorical = new EquityHistorical();
		}

		while (dateCounter.before(dateTo)) {

			cleanFolder(folderPath);

			String calculatedDateFrom = new SimpleDateFormat("dd-MM-yyyy").format(dateCounter);
			;
			String calculatedDateTo = getDateRange(dateCounter, (365 * 1) + 1);

			equityHistorical.downloadFileByDateRange(symbol, calculatedDateFrom, calculatedDateTo);

			dateCounter = new SimpleDateFormat("dd-MM-yyyy").parse(calculatedDateTo);

			loadDataForSymbol();

		}

	}

	public String getDateRange(Date date, int i) {
		// TODO Auto-generated method stub

		Calendar cal = Calendar.getInstance();

		cal.setTime(date);

		cal.add(Calendar.DATE, -1 * i);

		return new SimpleDateFormat("dd-MM-yyyy").format(cal.getTime());

	}

	public void downloadDataForSymbolVariableYearRange(String symbol, int noOfYearsBack) throws Exception {

		String folderPath = "D:\\NSE_Downloads\\Equity_Historical";

		cleanFolder(folderPath);

		if (equityHistorical == null) {
			equityHistorical = new EquityHistorical();
		}

		String dateFrom = getDateRange(new Date(), (365 * (noOfYearsBack + 1)));
		String dateTo = getDateRange(new Date(), (365 * noOfYearsBack) + 1);
		equityHistorical.downloadFileByDateRange(symbol, dateFrom, dateTo);

	}

	public void downloadDataForSymbol(String symbol) throws Exception {

		String folderPath = "D:\\NSE_Downloads\\Equity_Historical";

		cleanFolder(folderPath);

		if (equityHistorical == null) {
			equityHistorical = new EquityHistorical();
		}

		equityHistorical.downloadFileByDateRangeFixed2Y(symbol);

	}

	public void cleanFolder(String folderPath) throws IOException {

		File folder = new File(folderPath);

		FileUtils.cleanDirectory(folder);

	}

	public List<String> getTop50ByTurnover() throws Exception {

		getTodaysFullData();

		List<String> listReturn = eodCycleDBHelper.getTop50Equities(5);

		// listTop50Equities = listReturn;

		return listReturn;

	}

	public void getTodaysFullData() throws Exception {
		// TODO Auto-generated method stub

		String folderPath = "D:\\NSE_Downloads\\Equity_Daily";

		cleanFolder(folderPath);

		if (equityCurrentTime == null) {
			equityCurrentTime = new EquityCurrentTime();
		}

		equityCurrentTime.downloadCurrentFileFullData();

		File folder = new File(folderPath);

		if (folder.isDirectory()) {
			File[] files = folder.listFiles();

			String filePath = files[0].getAbsolutePath();

			eodCycleDBHelper.loadDataToDB(filePath, true, 5);

			Thread.sleep(5000);

		}

	}

	public void downloadDataAndLoadDBForInitialSetup(List<String> listTop50Equities) throws Exception {

		for (Iterator iterator = listTop50Equities.iterator(); iterator.hasNext();) {
			String symbol = (String) iterator.next();

			downloadDataForSymbol(symbol);

			loadDataForSymbol();

			for (int i = 2; i <= 5; i++) {

				downloadDataForSymbolVariableYearRange(symbol, i);
				loadDataForSymbol();
			}

		}

	}

	public void loadDataForSymbol() throws Exception {

		String folderPath = "D:\\NSE_Downloads\\Equity_Historical";

		File folder = new File(folderPath);

		if (folder.isDirectory()) {
			File[] files = folder.listFiles();

			if (files == null || files.length == 0) {
				return;
			}

			String filePath = files[0].getAbsolutePath();

			eodCycleDBHelper.loadDataToDB(filePath, false, 5);

			Thread.sleep(5000);

		}
	}

}
