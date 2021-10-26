*** Settings ***
Library    SeleniumLibrary
Resource    ./po/Amazonregister.robot
*** Keywords ***
Login
    Amazonregister.Open page
    Amazonregister.Start account and verify
    Amazonregister.Account create
    Amazonregister.close

