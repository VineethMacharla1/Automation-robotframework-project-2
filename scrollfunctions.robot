#Dynamically calculate a position co-ordinates in test scprit and use scrool function to identify and click
*** Settings ***
Library  SeleniumLibrary
*** Variables ***
*** Test Cases ***
LoginTest
    open browser    http://www.practiceselenium.com/practice-form.html  chrome
    maximize browser window
    input text      xpath://input[@name="firstname"]      vineeth
    sleep               4s
    input text      xpath://input[@name="lastname"]       macharla
    click element   xpath://input[@value="Male"]
    click element   xpath://input[@value="5"]
    sleep               5s
    input text      xpath://input[@id="datepicker"]    16-18-2021
    click element   xpath:(//input[@type="checkbox"])[2]
    click element   xpath://input[@value="Harmless Addiction"]
    sleep               6s
    select from list by index       continents      3
    select from list by label       selenium_commands      WebElement Commands
    click element    xpath://button[@name="submit"]
    sleep               5s
    click element      xpath://li[@style="width: "][3]
Scroll To Element
    scroll element into view     xpath:(//span[@class="button-content wsb-button-content"])[3]
    ${x}=        Get Horizontal Position  xpath:(//span[@class="button-content wsb-button-content"])[3]
    ${y}=        Get Vertical Position    xpath:(//span[@class="button-content wsb-button-content"])[3]
    Execute Javascript  window.scrollTo(${x},${y})
    Log To Console  (${x},${y})
    click element      xpath:(//span[@class="button-content wsb-button-content"])[3]
    #Click ElementAtCoordinates   ${xpath:(//span[@class="button-content wsb-button-content"])[3]}      ${x}    ${y}
