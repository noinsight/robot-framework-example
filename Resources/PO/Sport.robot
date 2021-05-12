*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${SPORT_HEADER_LABEL} =  id=sp-nav-all-sport-button
${SPORT_PAGE_TEXT} =  All Sport

*** Keywords ***
Verify Page Loaded
    # Check that page does not take longer than 500ms to load
    [Timeout]  500ms
    wait until page contains element  ${SPORT_HEADER_LABEL}

Validate Page Contents
    Element Should Contain  ${SPORT_HEADER_LABEL}  ${SPORT_PAGE_TEXT}  ignore_case=true