package au.com.carsguide.pages;

import au.com.carsguide.utility.Utility;
import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.CacheLookup;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class HomePage extends Utility {
    private static final Logger log = LogManager.getLogger(HomePage.class.getName());

    public HomePage() {
        PageFactory.initElements(driver, this);
    }

    @CacheLookup
    @FindBy(xpath = "//a[contains(text(),'buy + sell')]")
    WebElement buySellTab;

    @CacheLookup
    @FindBy (xpath = "//a[contains(text(),'Search Cars')]")
    WebElement searchCars;

    @CacheLookup
    @FindBy(xpath = "//a[normalize-space()='Used']")
    WebElement usedCar;

    public void mouseHoverToBuySellTab() throws InterruptedException {
        Thread.sleep(2000);
        mouseHoverToElement(buySellTab);
        log.info("Mouse Hover to Buy+Sell tab :"+buySellTab.toString());
    }
    public void clickOnSearchCarLink(){
        mouseHoverToElementAndClick(searchCars);
        log.info("Click on search car link : "+searchCars.toString());
    }

    public void clickOnUsedLink(){
        mouseHoverToElementAndClick(usedCar);
        log.info("Click on used car link :"+usedCar.toString());
    }



}