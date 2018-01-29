*** Settings ***
Library  ExtendedSelenium2Library
Resource  ../Resources/PO/LoginPage.robot
Resource  ../Resources/PO/LeftNav.robot
Resource  ../Resources/PO/CreateResourceQ.robot



*** Keywords ***
Login CCAdmin
   LoginPage.Login
   LoginPage.Verify Page Loaded  Admin Panel/ECM
Access Queue list
     LeftNav.Queue
Create Resource CSQ
        CreateResourceQ.Fill Form
Access EA List
     LeftNav.EA
     #LoginPage.Verify Page Loaded  Easy Announcements


Verification

    CreateResourceQ.Verify Queue Created

