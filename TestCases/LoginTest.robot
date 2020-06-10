*** Settings ***
Library      SeleniumLibrary
Resource  ../Resources/LoginKeyword.robot

*** Variables ***
${Browser}  headlessfirefox
${Siteurl}  http://www.newtours.demoaut.com/
${user}     tutorial
${pwd}      tutorial

*** Test Cases ***
LoginTest
    open my browser  ${Siteurl}   ${browser}
    Enter UserName   ${user}
    Enter Password   ${pwd}
    Click SignIn
    sleep  3
    Verify Succesful Login
    Close My Browser