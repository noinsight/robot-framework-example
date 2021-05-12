*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${WEATHER_HEADER_LABEL} =  id=site-container
${WEATHER_PAGE_TEXT} =  Personalise your weather

*** Keywords ***
Verify Page Loaded
    [Timeout]  50ms
    wait until page contains element  ${WEATHER_HEADER_LABEL}

Validate Page Contents
    Element Should Contain  ${WEATHER_HEADER_LABEL}  ${WEATHER_PAGE_TEXT}  ignore_case=true
