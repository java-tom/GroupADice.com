  Feature: Register feature
As a customer, I be able to reach register page
As a customer, I be able to use links on register page 
As a customer, I be able to register


Scenario: Verify login url


Given I am on homepage
When I click on login register dropdown button
Then I click on register
Then I should land on register page and the url should be correct


Scenario: Verify register title

Given I am on homepage
When I click on login dropdown button
Then I click on login
Then I should land on register and the title should be resgister now on dice for tech jobs dice com


Scenario: Verify post a job link

Given I am on register page
When I click on post a job link
Then I should see a customer information pop up window 
Then I should click returning user sign in button
Then I should land on dice employer sign in


Scenario: Verify employer login link

Given I am on register page
When I click on employer login link
Then I should land on dice employer sign in page


Scenario: Verify contact sales link

Given I am on sign in page
When I click on contact sales link
Then I should land on register now on dice for tech jobs dice.com on a new window


Scenario: registration

Given I am on not currently log in
When I am on the register now page
Then I should see join dice today
And I fill in "First Name" with "test"
And I fill in "Last Name" with "tester"
And I fill in "Email" with "testresumedice02@gmail.com"
And I fill in "New Password" with "Dice2020"
And I fill in "Retype Password" with "Dice2020"
Then I should verify dice commununications box is clicked
Then I manually pass recaptcha
Then I click on Register button
Then I should see profile type page
















