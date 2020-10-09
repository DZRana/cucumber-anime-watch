Feature: Test the navigation to the Sign In page
    I want to be able to test if the user can navigate to the Sign In page

    Background:
        Given I open the site "/anime-watch/#/"

    Scenario: Single click on the "Sign In" button should navigate to another page
        When  I click on the button "//button[text() = 'Sign In']"
        Then  I expect the url to contain "signin"