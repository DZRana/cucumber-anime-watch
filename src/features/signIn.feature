Feature: Test Sign In functionality
    I want to be able to test if a user can sign in

    Background:
        Given I open the site "/anime-watch/#/signin"

    Scenario: Set the content of a input field
        When  I set "test@gmail.com" to the inputfield "#email"
        Then  I expect that element "#email" contains any text
        And   I expect that element "#email" contains the text "test@gmail.com"

    Scenario: Set the content of a input field
        When  I set "test" to the inputfield "#password"
        Then  I expect that element "#password" contains any text
        And   I expect that element "#password" contains the text "test"

    Scenario: Single click on the "Submit" button should log the user in and navigate to another page
        When  I click on the button "//button[text() = 'Submit']"
        And   I pause for 5000ms
        Then  I expect the url to contain "explore"
