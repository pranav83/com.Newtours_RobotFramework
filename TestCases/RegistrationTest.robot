*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/RegistrationKeywords.robot

*** Variables ***
${Browser}  headlesschrome
${Siteurl}  http://www.newtours.demoaut.com/

*** Test Cases ***
RegistrationTest
    Open My Browser  ${Siteurl}     ${Browser}
    Click Register Link
    Enter FirstName  Neelraj
    Enter LastName  POthiwala
    Enter Phone  12345678790
    Enter Email  xyz@gmail.com
    Enter Address1  173a Plashet Grove
    Enter Address2  Eastham East London
    Enter City  London
    Enter State/Province  Essex
    Enter Postal Code  E6 1BX
    Select Country  UNITED KINGDOM
    Enter UserName  Neelraj
    Enter Password  Neelraj11
    Enter Confirm Password  Neelraj11
    Click Submit
    Verify Succesful Registration
    Close My Browsers


