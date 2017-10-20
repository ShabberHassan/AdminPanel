*** Settings ***
Library  ExtendedSelenium2Library

*** Variables ***
${Month} =  Dec
${Year}


*** Keywords ***
Create EA

    mouse over  xpath=.//*[@class='md-fab md-warn md-button md-default-theme md-ink-ripple']
    click button  xpath=.//*[@class='md-fab md-raised md-accent md-mini md-button md-default-theme md-ink-ripple']

    #click button  xpath=.//*[@id='board-calendar']/md-sidenav/div[2]/md-fab-speed-dial/md-fab-actions/div[2]/button
    input text  xpath=.//input[starts-with(@id,'input_')]  ShabberEA


    click element  xpath=.//md-select[starts-with(@id,'select_')]

    click element  xpath=html/body/div[5]/md-select-menu/md-content/md-option[1]

    click element  xpath=.//*[starts-with(@id,'dialogContent_')]/form/div[3]/div[2]/md-menu/button
    click element  xpath=.//*[starts-with(@id,'tab-content-')]/div/md-menu-item[3]/button

    click element  xpath=.//*[starts-with(@id,'input_')]
    click element  xpath=.//*[starts-with(@id,'dialogContent_')]//div[3]/fetch-files//md-menu/button

    click element  xpath=.//*[starts-with(@id,'tab-content-')]/div/md-menu-item[2]/div/div[3]/button

    click element  xpath=.//*[starts-with(@id,'tab-content-')]/div/md-menu-item[1]/div/div[3]/button

    click element  xpath=.//md-tab-content[starts-with(@id,'tab-content-')]/div/md-menu-item[1]/button

    click element  xpath=.//*[starts-with(@id,'input_')]

    scroll element into view  xpath=//*[starts-with(@id,'dialogContent_')]/form/div[5]/div[5]/md-list/md-list-item/div/div/md-switch/div[1]/div[1]


    click element  xpath=.//*[starts-with(@id,'dialogContent_')]/form/div[5]/div[1]/md-datepicker/button

    LOG  ${Month}