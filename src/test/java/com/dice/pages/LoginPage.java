package com.dice.pages;

import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

import com.dice.utilities.Driver;

public class LoginPage {
	
	public LoginPage() {
	PageFactory.initElements(Driver.getDriver(), this);
	
}

	//@FindBy (xpath = "//a[@href='/dashboard/login']")
	//public WebElement signInButton;
	




}