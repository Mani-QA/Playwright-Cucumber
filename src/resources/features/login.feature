Feature: User Login Scenarios

    Background:
        Given User Navigates to the application
    
    @All @Success
    Scenario: Login with valid credentials
        Given User enter the username as "standard_user"
        And User enter the password as "secret_sauce"
        And User clicks on the Login button
        Then Login should be success

    @All @Failure
    Scenario: Login using Locked username
        Given User enter the username as "locked_out_user"
        And User enter the password as "secret_sauce"
        And User clicks on the Login button
        Then Login should fail

