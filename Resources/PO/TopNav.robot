*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${NEWS_TEXT} =  news
${WEATHER_TEXT} =  weather
${SPORT_TEXT} =  sport

*** Keywords ***
Select "News" Page
    click link  ${NEWS_TEXT}
    Sleep  ${JUST_TO_SEE_SCREEN_NOT_REQUIRED} 

Select "Weather" Page
    click link  ${WEATHER_TEXT}
    Sleep  ${JUST_TO_SEE_SCREEN_NOT_REQUIRED} 

Select "Sport" Page
    click link  ${SPORT_TEXT}
    Sleep  ${JUST_TO_SEE_SCREEN_NOT_REQUIRED} 