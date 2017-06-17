package com.self.main;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import org.apache.commons.io.FileUtils;

import com.self.indicators.db.helper.EODCycleDBHelper;
import com.self.seleniumscrapper.EquityCurrentTime;
import com.self.seleniumscrapper.EquityHistorical;

public class EODCycleMain {

	private List<String> listTop50Equities;

	private EODGlobal eodGlobal;

	private EODCycleDBHelper eodCycleDBHelper;
	
	private EquityHistorical equityHistorical = null;
	
	private EquityCurrentTime equityCurrentTime = null;


	public EODCycleMain() {

		eodGlobal = EODGlobal.getInstance();

		eodCycleDBHelper = new EODCycleDBHelper(eodGlobal.getPool());

	}

	
	private void cleanFolder(String folderPath) throws IOException{
		
		File folder = new File(folderPath);
		
		FileUtils.cleanDirectory(folder); 

		}


		
		
	
	private void getTop50ByTurnover() throws Exception {
		
		String folderPath = "D:\\NSE_Downloads\\Equity_Daily";
		
		cleanFolder(folderPath);
		
/*		if(equityCurrentTime == null)
		{
			equityCurrentTime = new EquityCurrentTime();
		}
		
		
		equityCurrentTime.downloadCurrentFileFullData();
		
		File folder = new File(folderPath);
		
		if(folder.isDirectory())
		{
			File[] files = folder.listFiles();
			
		
			String filePath = files[0].getAbsolutePath();

			
			eodCycleDBHelper.loadDataToDB(filePath,true, 5);
			
			Thread.sleep(5000);
			
		}
*/		
		listTop50Equities = eodCycleDBHelper.getTop50Equities(5);

	}

	public static void main(String[] args) throws Exception {

		EODCycleMain eodCycleMain = new EODCycleMain();

		eodCycleMain.executeCycle();
		
		

	}

	private void executeCycle() throws Exception {
		

		try {
			getTop50ByTurnover();

			downloadDataAndLoadDB();
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			
			if(equityCurrentTime!=null)
			{
				equityCurrentTime.tearDown();
			}
			
			if(equityHistorical!=null)
			{
				equityHistorical.tearDown();
			}
		}

	}

	private void downloadDataAndLoadDB() throws Exception {
		
		
		
		for (Iterator iterator = listTop50Equities.iterator(); iterator.hasNext();) {
			String symbol = (String) iterator.next();
			
			
			downloadDataForSymbol(symbol);
			
			loadDataForSymbol();
			
			for(int i=2;i<=5;i++ ){
				
				downloadDataForSymbolVariableRange(symbol,i);
				loadDataForSymbol();
			}

			
			
		}

	}

	private void loadDataForSymbol() throws Exception {
		
		

		
		String folderPath = "D:\\NSE_Downloads\\Equity_Historical";
		
		File folder = new File(folderPath);
		
		if(folder.isDirectory())
		{
			File[] files = folder.listFiles();
			
			String filePath = files[0].getAbsolutePath();

			
			eodCycleDBHelper.loadDataToDB(filePath,false, 5);
			
			Thread.sleep(5000);
			
		}
	}

	private void downloadDataForSymbol(String symbol) throws Exception {
		
		String folderPath = "D:\\NSE_Downloads\\Equity_Historical";
		
		cleanFolder(folderPath);
		
		if(equityHistorical == null)
		{
			equityHistorical = new EquityHistorical();
		}

		
		equityHistorical.downloadFileByDateRangeFixed2Y(symbol);

		
	}
	
	private void downloadDataForSymbolVariableRange(String symbol,int noOfYearsBack) throws Exception {
		
		String folderPath = "D:\\NSE_Downloads\\Equity_Historical";
		
		cleanFolder(folderPath);
		
		if(equityHistorical == null)
		{
			equityHistorical = new EquityHistorical();
		}

		
		
		String dateFrom = getDateRange(new Date(),(365*(noOfYearsBack+1)));
		String dateTo = getDateRange(new Date(),(365*noOfYearsBack)+1);
		equityHistorical.downloadFileByDateRange(symbol, dateFrom, dateTo);
		
	}


	private String getDateRange(Date date, int i) {
		// TODO Auto-generated method stub
		
		Calendar cal = Calendar.getInstance();
		
		cal.setTime(date);
		
		cal.add(Calendar.DATE, -1*i);
		
		return new SimpleDateFormat("dd-MM-yyyy").format(cal.getTime());
		
	}
}
