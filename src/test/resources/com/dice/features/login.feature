Feature: Login feature
As a customer, I be able to reach sign in page
As a customer, I be able to use links on sign in page 
As a customer, I be able to log in with valid credentials
As a customer, I be able to see forgot password link if I forgot log in info


Scenario: Verify login url


Given I am on homepage
When I click on login register dropdown button
Then I click on login
Then I should land on login page and the url should be correct


Scenario: Verify login title

Given I am on homepage
When I click on login dropdown button
Then I click on login
Then I should land on login page and the title should be sign in


Scenario: Verify forgot password link

Given I am on sign in page
When I click on forgot your password link
Then I should land on dice seeker forgot password page


Scenario: Verify employer sign in link

Given I am on sign in page
When I click on employer sign in link
Then I should land on dice employer sign in page


Scenario: Verify employer register now link

Given I am on sign in page
When I click on register link
Then I should land on register now on dice for tech jobs dice.com


Scenario: log in with valid credentials

Given I am on sign in page
When I type "testresumedice@gmail.com" in the email field
And I type  "Dice2020" in the password field
And I press the  "sign in" button
Then I should land on seeker dashboard profile

Scenario: log in with invalid credentials

Given I am on sign in page
When I type "testresumedic@gmail.com" in the email field
And I type  "Dice2020" in the password field
And I press the  "sign in" button
Then I should see Email and or password incorrect message
And I should see forgot password link
Then I click forgot password link
Then I should see forgot password page opens in a separate window














