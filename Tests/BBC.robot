*** Settings ***
Documentation  Some examples navigating the BBC website
Resource  ../Resources/BBCWeb.robot
Resource  ../Resources/CommonWeb.robot
Test Setup  Begin Web Test
Test Teardown  End Web Test

# command line to invoke the tests
#    robot -d results tests/BBC.robot

*** Variables ***
${BROWSER} =  chrome
${URL} =  http://www.bbc.co.uk
# A delay just for debugging purposes
${JUST_TO_SEE_SCREEN_NOT_REQUIRED} =  4s

***Test Cases ***

Should be able to access the "News" page
    [Documentation]  Go to the BBC News page
    [Tags]  News
    Given the user is on the BBC home page
    When the user selects the news
    Then the news is displayed within 50ms

Should be able to access the "Weather" page
    [Documentation]  Go to the BBC Weather page
    [Tags]  Weather
    Given the user is on the BBC home page
    When the user selects the weather
    Then the weather is displayed

Should be able to access the "Sport" page
    [Documentation]  Go to the BBC Sport page
    [Tags]  Sport
    Given the user is on the BBC home page
    When the user selects the sport page
    Then the sport page is displayed

*** Keywords ***
The user is on the BBC home page
    BBCWeb.Go to Home Page

The user selects the news
    BBCWeb.Go to "News" Page

The news is displayed within ${timeout}
    ${pagename} =  Set Variable  "News"
    Run Keyword  BBCWeb.Validate ${pagename} Page within ${timeout}

The user selects the weather
    BBCWeb.Go to "Weather" Page

The weather is displayed
    BBCWeb.Validate "Weather" Page

The user selects the sport page
    BBCWeb.Go to "Sport" Page

The sport page is displayed
    BBCWeb.Validate "Sport" Page
