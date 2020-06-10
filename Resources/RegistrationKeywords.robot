*** Settings ***
Library  SeleniumLibrary
Variables  ../PageObject/HeaderPageObject/RegisterLocators.py
Variables  ../PageObject/HeaderPageObject/Locators.py

*** Keywords ***
Open My Browser
    [Arguments]  ${Siteurl}     ${Browser}
    open browser  ${Siteurl}    ${Browser}
    maximize browser window

Click Register Link
    click link  ${link_Reg}

Enter FirstName
    [Arguments]  ${firstName}
    input text  ${txt_firstname}    ${firstName}

Enter LastName
    [Arguments]  ${lastName}
    input text  ${txt_lastname}     ${lastName}

Enter Phone
    [Arguments]  ${phone}
    input text  ${txt_Phone}    ${phone}

Enter Email
    [Arguments]  ${email}
    input text  ${txt_email}    ${email}

Enter Address1
    [Arguments]  ${add1}
    input text  ${txt_add1}     ${add1}

Enter Address2
    [Arguments]  ${add2}
    input text  ${txt_add2}     ${add2}

Enter City
    [Arguments]  ${city}
    input text  ${txt_city}     ${city}

Enter State/Province
    [Arguments]  ${state}
    input text  ${txt_state}    ${state}

Enter Postal Code
    [Arguments]  ${pstcd}
    input text  ${txt_postcode}     ${pstcd}

Select Country
    [Arguments]  ${country}
    select from list by label  ${drp_Country}   ${country}

Enter UserName
    [Arguments]  ${user}
    input text  ${txt_Username}     ${user}

Enter Password
    [Arguments]  ${password}
    input text  ${txt_password}     ${password}

Enter Confirm Password
    [Arguments]  ${Cpass}
    input text  ${txt_confirmpassword}  ${Cpass}

Click Submit
    click button  ${btn_Submit}

Verify Succesful Registration
    page should contain  Thank you for registering.

Close My Browsers
    close all browsers

