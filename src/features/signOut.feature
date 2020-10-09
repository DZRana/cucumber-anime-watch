Feature: Test Sign Out functionality
    I want to be able to test if a user can sign out

    Background:
        Given I open the site "/anime-watch/#/explore"

    Scenario: Single click on a link should navigate to another page
        When  I click on the link "Sign Out"
        Then  I expect the url to not contain "explore"