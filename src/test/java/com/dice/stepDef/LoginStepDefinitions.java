package com.dice.stepDef;

import java.util.concurrent.TimeUnit;

import org.junit.Assert;

import com.dice.pages.HomePage;
import com.dice.utilities.ConfigReader;
import com.dice.utilities.Driver;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import io.github.bonigarcia.wdm.WebDriverManager;

public class LoginStepDefinitions {
	
	
	

	@Given("I am on homepage")
	public void i_am_on_homepage() {
		
		
		Driver.getDriver().manage().timeouts().
		implicitlyWait(Long.parseLong(ConfigReader.getProperty("implicitWait")), TimeUnit.SECONDS);
		Driver.getDriver().manage().window().maximize();
		Driver.getDriver().get(ConfigReader.getProperty("url"));
	   
	}
	@When("I click on login button")
	public void i_click_on_login_button (){
		
		HomePage hp = new HomePage();
		hp.logInButton.click();
		
	   
	}
	@Then("I should land on login page and the title should be Sign In")
	public void i_should_land_on_login_page_and_the_title_should_be_Sign_In() {
		String title = Driver.getDriver().getTitle();
		Assert.assertEquals("Sign In" , title);
		
	}
	
	@Then("I should land on login page and the url should be correct")
	public void i_should_land_on_login_page_and_the_url_should_be_correct() {
		String url = Driver.getDriver().getCurrentUrl();
		Assert.assertEquals("https://www.dice.com/dashboard/login" , url);
	}

}
