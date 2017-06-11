package com.self.seleniumscrapper;

import java.util.NoSuchElementException;
import java.util.concurrent.TimeUnit;

import org.openqa.selenium.Alert;
import org.openqa.selenium.By;
import org.openqa.selenium.NoAlertPresentException;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.firefox.FirefoxProfile;
import org.openqa.selenium.support.ui.Select;

public class EquityHistorical {
  private WebDriver driver;
  private String baseUrl;
  private boolean acceptNextAlert = true;
  private StringBuffer verificationErrors = new StringBuffer();
  
  
  public static void main(String[] args) throws Exception {
	  EquityHistorical equityHistorical = new EquityHistorical();
	  equityHistorical.setUp();
	  equityHistorical.test2();
}

  @SuppressWarnings("deprecation")
public void setUp() throws Exception {
   // driver = new FirefoxDriver();
    baseUrl = "https://www.nseindia.com/products/content/equities/equities/eq_security.htm";
    // ProfilesIni myprofile = new ProfilesIni();
    
    FirefoxProfile profile = new FirefoxProfile();

	profile.setPreference("browser.download.dir", "D:\\NSE_Downloads\\Equity_Historical"
			);
	profile.setPreference("pref.downloads.disable_button.edit_actions",
			false);
	profile.setPreference("browser.download.folderList", 2);
	profile.setPreference("browser.download.lastDir",
			"D:\\NSE_Downloads\\Equity_Historical");
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
	// 
   // driver.manage().timeouts().implicitlyWait(30, TimeUnit.SECONDS);

  
  

  }

  
  public void test2() throws Exception {driver.get(baseUrl + "/products/content/equities/equities/eq_security.htm");
  driver.findElement(By.id("symbol")).clear();
  driver.findElement(By.id("symbol")).sendKeys("SBIN");
  new Select(driver.findElement(By.id("dateRange"))).selectByVisibleText("24 Months");
  driver.findElement(By.id("get")).click();
  driver.findElement(By.id("submitMe")).click();
  driver.findElement(By.linkText("Download file in csv format")).click();}

  public void tearDown() throws Exception {
    driver.quit();
   
  }

  private boolean isElementPresent(By by) {
    try {
      driver.findElement(by);
      return true;
    } catch (NoSuchElementException e) {
      return false;
    }
  }

  private boolean isAlertPresent() {
    try {
      driver.switchTo().alert();
      return true;
    } catch (NoAlertPresentException e) {
      return false;
    }
  }

  private String closeAlertAndGetItsText() {
    try {
      Alert alert = driver.switchTo().alert();
      String alertText = alert.getText();
      if (acceptNextAlert) {
        alert.accept();
      } else {
        alert.dismiss();
      }
      return alertText;
    } finally {
      acceptNextAlert = true;
    }
  }
}

