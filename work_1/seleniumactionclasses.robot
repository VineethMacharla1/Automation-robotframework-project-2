
*** Settings ***
Library  SeleniumLibrary
*** Variables ***

*** Test Cases ***
Action classes
     open browser        http://testautomationpractice.blogspot.com/     chrome
     Maximize Browser Window
     #right click action
     open context menu       xpath://img[@class="wikipedia-icon"]
     sleep                   5s
     #Double click action
     double click element        xpath://button[@ondblclick="myFunction1()"]
     sleep                   10s
     Scroll Element Into View      xpath://label[@for="number"]
     Mouse Down                    xpath://label[@for="number"]
     Mouse Up                      xpath://label[@for="number"]
     sleep                  5s
     Scroll Element Into View      xpath://input[@id="age"]
     Mouse Over                    xpath://input[@id="age"]
     sleep                  5s
     Mouse Out                     xpath://input[@id="age"]
     sleep                  5s
     close browser
     Drag and Drop
     open browser           http://www.dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html       chrome
     maximize browser window
     drag and drop       id:box1     id:box106
     drag and drop       id:box2     id:box107
