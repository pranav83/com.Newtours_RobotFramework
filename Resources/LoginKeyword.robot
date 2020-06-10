*** Settings ***
Library      SeleniumLibrary
Variables    ../PageObject/Locators.py
Library  SeleniumLibrary
Variables  ../PageObject/HeaderPageObject/Locators.py

*** Keywords ***
Open My Browser
    [Arguments]  ${Siteurl}     ${Browser}
    open browser  ${Siteurl}    ${Browser}
    maximize browser window

Enter UserName
    [Arguments]  ${username}
    Input Text  ${txt_loginUserName}    ${username}

Enter Password
    [Arguments]  ${password}
    Input Text  ${txt_loginPassword}    ${password}

Click SignIn
    click button  ${btn_signIN}

Verify Succesful Login
    title should be  Find a Flight: Mercury Tours:

Close My Browser
    close all browsers