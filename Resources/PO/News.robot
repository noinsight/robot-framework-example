*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${NEWS_HEADER_LABEL} =  id=brand
${NEWS_PAGE_TEXT} =  bbc news

*** Keywords ***
Verify Page Loaded
    # Check that page does not take longer than 50ms to load
    [Timeout]  50ms
    wait until page contains element  ${NEWS_HEADER_LABEL}

Validate Page Contents
    ${ElementText} =  get text  ${NEWS_HEADER_LABEL}
    should be equal as strings  ${ElementText}  ${NEWS_PAGE_TEXT}  ignore_case=true

Validate Page Contents within
    # Check that page does not take longer than timeout to load.
    [arguments]  ${timeout}
    [Timeout]  ${timeout}
    ${ElementText} =  get text  ${NEWS_HEADER_LABEL}
    should be equal as strings  ${ElementText}  ${NEWS_PAGE_TEXT}  ignore_case=true
