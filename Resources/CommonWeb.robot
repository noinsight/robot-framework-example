*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Keywords ***
Begin Web Test
    open browser  ${URL}  ${BROWSER}

End Web Test
    close browser
