*** Settings ***
Library    SeleniumLibrary
Resource    ./po/searchproduct.robot
*** Keywords ***
Shopping
    searchproduct.open amazon page
    searchproduct.Search
    searchproduct.verify search
    searchproduct.Shopping and verify
    searchproduct.Shopping done
    searchproduct.Finish


