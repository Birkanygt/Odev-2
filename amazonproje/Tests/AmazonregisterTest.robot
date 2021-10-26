*** Settings ***
Library    SeleniumLibrary
Resource     ../Resources/AmazonregisterApp.robot
*** Test Cases ***
Login Test
    AmazonregisterApp.Login