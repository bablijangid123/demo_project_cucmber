package pages;

import org.openqa.selenium.By;
import org.openqa.selenium.chrome.ChromeDriver;

import Base.ProjectSpecificMethod;

public class CreateLeadpage extends ProjectSpecificMethod {

	public CreateLeadpage(ChromeDriver driver) {
		this.driver = driver;
	}

	// clickcreatelead

	public CreateLeadInfo clickCreateLead() {
		driver.findElement(By.linkText("Create Lead")).click();
		return new CreateLeadInfo(driver);
	}

}
