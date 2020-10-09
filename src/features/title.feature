Feature: Test the page title
    I want to be able to test if a page has a certain title

    Background:
        Given I open the site "/anime-watch/#/"

    Scenario: Test if the app has the title "Anime Watch"
        Given the title is "Anime Watch"
        Then  I expect that element "h1" not contains the text "Google"

    Scenario: Test if the app does not have the title "Google"
        Given the title is not "Google"
        And   the page url is not "https://www.google.com/"
        Then  I expect that element "h1" not contains the text "Google"