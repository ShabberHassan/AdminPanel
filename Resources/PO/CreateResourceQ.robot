*** Settings ***
Library  ExtendedSelenium2Library


*** Keywords ***
Fill Form
    click button  xpath=.//*[@class="md-fab md-warn md-button md-default-theme md-ink-ripple"]
    input text  xpath=.//input[starts-with(@id,'input_')]  ShabberCSQ211
    click element  xpath=//md-select/md-select-value[@class='md-select-value']
    click element  xpath=.//*[@value='RESOURCE_GROUP']
    click element  xpath=//md-input-container/md-select[@name='selectionCriteria']
    click element  xpath=.//*[@value='Most Handled Contacts']
    click element  xpath=.//*[@placeholder='Select one Group']
    click element  xpath=.//*[@value='88']
    click button  xpath=.//button[@class='save-button md-accent md-raised md-button md-ink-ripple md-default-theme']

Verify Queue created
    wait until page contains  ShabberCSQ211