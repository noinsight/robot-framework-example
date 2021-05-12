*** Settings ***
Library  String

Resource  ./PO/Home.robot
Resource  ./PO/Weather.robot
Resource  ./PO/TopNav.robot
Resource  ./PO/News.robot
Resource  ./PO/Sport.robot

*** Variables ***

*** Keywords ***
Go to Home Page
    Home.Navigate To
    Home.Verify Page Loaded
    Home.Validate Page Contents

Validate ${pagename} Page within ${timeout}
    ${pagename} =  String.Remove String  ${pagename}  "
    Run Keyword  ${pagename}.Validate Page Contents within  ${timeout}

Validate ${pagename} Page
    ${pagename} =  String.Remove String  ${pagename}  "
    Run Keyword  ${pagename}.Validate Page Contents

Go to ${pagename} Page
    Run Keyword  TopNav.Select ${pagename} Page
    ${pagename} =  String.Remove String  ${pagename}  "
    Run Keyword  ${pagename}.Verify Page Loaded
