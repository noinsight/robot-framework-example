*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${HOME_NAVIGATION_ELEMENT} =  id=header-content
${WELCOME_TEXT} =  Welcome to the BBC

*** Keywords ***
Navigate To
    go to  ${URL}

Verify Page Loaded
    wait until page contains element  ${HOME_NAVIGATION_ELEMENT}

Validate Page Contents
    Element Should Contain  ${HOME_NAVIGATION_ELEMENT}  ${WELCOME_TEXT}  ignore_case=true