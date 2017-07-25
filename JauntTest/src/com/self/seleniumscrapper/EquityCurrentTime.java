package com.self.seleniumscrapper;

import java.util.concurrent.TimeUnit;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.firefox.FirefoxProfile;

public class EquityCurrentTime {
  private WebDriver driver;
  private String baseUrl;
  private boolean acceptNextAlert = true;
  private StringBuffer verificationErrors = new StringBuffer();
  
  String foldername = "";

  
  public EquityCurrentTime(){

	  try {
		setUp();
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}

  }
  
  
  

  @SuppressWarnings("deprecation")
public void setUp() throws Exception {
   // driver = new FirefoxDriver();
    baseUrl = "http://www.nseindia.com/products/content/sec_bhavdata_full.csv";
    // ProfilesIni myprofile = new ProfilesIni();
    
    FirefoxProfile profile = new FirefoxProfile();
    
/*    DesiredCapabilities capabilities = DesiredCapabilities.htmlUnit();
    
    capabilities.setCapability("browser.download.dir", "D:\\NSE_Downloads\\Equity_Historical"
			);
*/ 
    if("Mac OS X".equals(System.getProperty("os.name")))
    {
    		foldername = "/Users/ashishnarang/nse-product-artifacts/NSE_Downloads/Equity_Daily";
    }
    else
    {
    		foldername = "D:\\NSE_Downloads\\Equity_Daily";
    }
	profile.setPreference("browser.download.dir", foldername
			);
	profile.setPreference("pref.downloads.disable_button.edit_actions",
			false);
	profile.setPreference("browser.download.folderList", 2);
	profile.setPreference("browser.download.lastDir",
			foldername);
	profile.setPreference("browser.download.manager.closeWhenDone", true);
	profile.setPreference(
			"browser.helperApps.neverAsk.saveToDisk",
			"application/csv, text/csv application/zip application/msexcell application/vnd.ms-excel text/plain");

	// WebDriver driver;
	// if(driver == null){
	
	/*System.setProperty("webdriver.gecko.driver", 
			"D:\\Software\\geckodriver-v0.16.1-win64\\geckodriver.exe");
	*/
	 driver = new FirefoxDriver(profile);
	
	// driver = new HtmlUnitDriver(capabilities);
	
	// 
   driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);

  
  

  }

  
  public void downloadCurrentFileFullData() throws Exception {
	  driver.get(baseUrl /*+ "/products/content/equities/equities/eq_security.htm"*/);
	  Thread.sleep(15000);
  }
  public void tearDown() throws Exception {
    driver.quit();
   
  }

  }

