*** Settings ***
Library    SeleniumLibrary
*** Keywords ***
open amazon page
    open browser    https://www.amazon.com.tr/    Firefox
    maximize browser window
Search
    click element    id=sp-cc-accept
    click element    css=#nav-search-dropdown-card > div
    click element    css=#searchDropdownBox > option:nth-child(13)
    input text    id=twotabsearchtextbox    jean pantolon kadın
    click element    id=nav-search-submit-button
verify search
    wait until page contains    jean pantolon kadın
Shopping and verify
    click element    //*[@id="search"]/div[1]/div[1]/div/span[3]/div[2]/div[2]/div/span/div/div/div[3]/div[2]/h2/a/span
    click element    id=native_dropdown_selected_size_name
Shopping done
    click element    //*[@id="native_size_name_2"]
    sleep    2
    click element    id=add-to-cart-button
    click element    id=hlb-ptc-btn-native-bottom
Finish
    close browser