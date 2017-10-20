*** Settings ***
Documentation  This is some basic info about the whole suite
# notice we're no longer referencing the Selenium2Library in our script!
Resource  ../Resources/Common.robot  # necessary for Setup & Teardown
Resource  ../Resources/AdminPanel.robot  # necessary for lower level keywords in test cases
Test Setup  Begin Test
Test Teardown  End Test

*** Test Cases ***
Test Case 1 Create Queue
    [Documentation]  Create Queue
    [Tags]  Agent List
    AdminPanel.Login CCAdmin
    AdminPanel.Access Queue list
    AdminPanel.Create Resource CSQ
    AdminPanel.Verification

