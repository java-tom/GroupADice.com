Feature: Employer sign in feature
As a customer, I be able to reach employer sign in page
As a customer, I be able to use links on employer sign in page 
As a customer, I be able to sign in with valid credentials
As a customer, I be able to see forgot password link if I forgot sign in info


Scenario: Verify login url


Given I am on homepage
When I click on login register dropdown button
Then I click on employer login
Then I should land on employer sign in page and the url should be correct


Scenario: Verify  employer sign in page title

Given I am on homepage
When I click on login dropdown button
Then I click on login
Then I should land on login page and the title should be dice employer sign in


Scenario: Verify forgot password link

Given I am on employer sign in page
When I click on forgot your password link
Then I should land on dice com employer password assistance page


Scenario: Verify register button

Given I am on employer sign in page
When I click on register button
Then I should land on employer registration page


Scenario: sign in with invalid credentials

Given I am on employer sign in page
When I type "testresumedice@gmail.com" in the email field
And I type  "Dice2020" in the password field
And I press the  "sign in" button
Then I should see incorrect user type message
And I should see tech professional login page link
Then I click tech professional login page link
Then I should land on sign in page














