*** Settings ***
Documentation          Example resource file with custom keywords. NOTE: Some keywords below may need
...                    minor changes to work in different instances.
Library                QForce
Library                String
Library                DateTime
Suite Setup            OpenBrowser                 about:blank    chrome

*** Variables ***
# IMPORTANT: Please read the readme.txt to understand needed variables and how to handle them!!
${BROWSER}             chrome
${home_url}            ${login_url}/lightning/page/home


*** Keywords ***


Login into Sales console
    [Documentation]    custom block to login to sales Application
    [Tags]             Sales Application
    Appstate           Home
    VerifyText         Developer Edition
    LaunchApp          Sales
    VerifyText         Sales

Logout from salesforce
    [Documentation]    custom block to logout from current salesforce org
    [Tags]             Logout from Application
    ClickText          View profile    
    ClickText          Log Out        