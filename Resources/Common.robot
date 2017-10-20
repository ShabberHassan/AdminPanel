*** Settings ***
Library  ExtendedSelenium2Library

*** Variables ***
${BROWSER} =  firefox
${Start_url} =  http://192.168.1.81:8080/efadminpanel/

*** Keywords ***
Begin Test

    open browser  about:blank  ${BROWSER}
    go to  ${Start_url}

End Test
     close browser