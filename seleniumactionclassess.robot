
*** Settings ***
Library  SeleniumLibrary
*** Variables ***

*** Test Cases ***
Action classes
     open browser        http://testautomationpractice.blogspot.com/     chrome
     Maximize Browser Window
     #Double click action
     double click element        xpath://button[@ondblclick="myFunction1()"]
     sleep                   6s
     Scroll Element Into View      xpath://label[@for="number"]
     Mouse Down                    xpath://label[@for="number"]
     sleep                    6s
     Mouse Up                      xpath://label[@for="number"]
     sleep                  5s
     Scroll Element Into View      xpath://input[@id="age"]
     Mouse Over                    xpath://input[@id="age"]
     sleep                  5s
     Mouse Out                     xpath://input[@id="age"]
     sleep                  5s
    close browser
     #Drag and Drop
     open browser           http://www.dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html       chrome
     maximize browser window
     drag and drop       id:box1     id:box106
     drag and drop       id:box2     id:box107
     close browser
     #right click action
     open browser           http://the-internet.herokuapp.com/context_menu      chrome
     open context menu       xpath://div[@id="hot-spot"]
     sleep                      5s
     Handle Alert
     close browser