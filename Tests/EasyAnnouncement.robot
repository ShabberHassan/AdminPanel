*** Settings ***
Documentation  This test suit conatains EA verification

Resource  ../Resources/Common.robot
Resource  ../Resources/AdminPanel.robot
Resource  ../Resources/PO/EasyAnnouncement.robot
#Resource  ../Resources/EasyAnnouncement.robot

Test Setup  Begin Test
#Test Teardown    End Test



*** Test Cases ***
Create General Announcement
    [Documentation]  Create EA
    [Tags]  EA
    AdminPanel.Login CCAdmin
    AdminPanel.Access EA List
    EasyAnnouncement.create EA
