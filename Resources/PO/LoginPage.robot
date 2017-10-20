*** Settings ***
Library  ExtendedSelenium2Library


*** Keywords ***

Login
    input text  xpath=//*[@id='input_6']  admin
    input text  xpath=//*[@id='input_7']  admiN123!
    click button  xpath=//*[@id='login-form']/form/button


Verify Page Loaded
    [Arguments]  ${Text}
    wait until page contains  ${Text}
