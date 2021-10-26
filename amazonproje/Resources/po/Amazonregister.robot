*** Settings ***
Library    SeleniumLibrary
*** Keywords ***
Open page
    open browser    https://www.amazon.com.tr/    Firefox
Start account and verify
    click element    id=nav-link-accountList
    click element    id=createAccountSubmit
    page should contain                Hesap oluşturun
Account create
    input text    id=ap_customer_name    Birkan Yiğit
    input text    id=ap_email    Birkanygt@gmail.com
    input text    id=ap_password     Ybirkan123.
    input text    id=ap_password_check     Ybirkan123.
    click element    id=continue
close
    close browser
