Feature: Test Search functionality
    I want to be able to test if a user can search for anime

    Background:
        Given I open the site "/anime-watch/#/explore"

    Scenario: Set the content of a input field
        When  I set "Naruto" to the inputfield "//input"
        Then  I expect that element "//input" contains any text
        And   I expect that element "//input" contains the text "Naruto"

    Scenario: Test if element responds to button press
        Given the element "//input" contains the text "Naruto"
        When  I press "Enter"
        And   I pause for 3000ms
        Then  I expect that element "h5" contains the text "Naruto"