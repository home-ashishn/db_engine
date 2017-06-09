package com.self.main;

import java.util.NoSuchElementException;

import com.self.dataobjects.MainContainer;
import com.self.scrapper.NiftyOptionChainDBHelper;
import com.self.scrapper.NiftyOptionChainScrapper;

public class TradingCycleMain {
	
	
	public void executeTradingCycle(){
		
		executeNiftyOptionData();
		
		
		
	}

	private void executeNiftyOptionData() {

		ScrapperGlobal scrapperGlobal = ScrapperGlobal.getInstance();
		
		NiftyOptionChainScrapper niftyOptionChainScrapper = new NiftyOptionChainScrapper();
		
		MainContainer mainContainer = niftyOptionChainScrapper.getNiftyOptionData();
		

		
		NiftyOptionChainDBHelper niftyOptionChainDBHelper = new NiftyOptionChainDBHelper(scrapperGlobal.getPool());
		
		try {
			niftyOptionChainDBHelper.insertOptionData(mainContainer.listLiveOptionDataSymbolNifty, 2);
		} catch (NoSuchElementException e) {
			// TODO Auto-generated catch block
			//e.printStackTrace();
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			//e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			//e.printStackTrace();
		}

	}

}
