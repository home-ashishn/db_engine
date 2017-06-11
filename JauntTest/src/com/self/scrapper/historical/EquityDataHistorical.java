package com.self.scrapper.historical;

import com.jaunt.Element;
import com.jaunt.JauntException;
import com.jaunt.UserAgent;
import com.self.dataobjects.MainContainer;

public class EquityDataHistorical {
	
	
	public void getEquityHistoricalData(){
		

		
		MainContainer mainContainer = new MainContainer();

		UserAgent userAgent = new UserAgent();

		try {
			userAgent.visit(
					"https://www.nseindia.com/products/content/equities/equities/eq_security.htm");


//			Element element = userAgent.doc.getForm(elementQuery);
			
			  userAgent.doc.fillout("Enter symbol:", "SBIN");       //fill out the component labelled 'Username:' with "tom"
			 // userAgent.doc.fillout("Password:", "secret");    //fill out the component labelled 'Password:' with "secret"
			 // userAgent.doc.choose(Label.RIGHT, "Remember me");//choose the component right-labelled 'Remember me'.
			  userAgent.doc.submit("submitMe");                          //submit the form
			
			

		} catch (JauntException e) {
			System.err.println(e);
		}
		
		finally{
			userAgent = null;
		}
		
		return ;

	
	}
	
	public static void main(String[] args) {
		
		EquityDataHistorical equityDataHistorical = new EquityDataHistorical();
		
		equityDataHistorical.getEquityHistoricalData();
		
	}

}
