*** Settings ***
Library  SeleniumLibrary
*** Variables ***

*** Test Cases ***
FullTESt
    open browser    https://mail.google.com/mail/u/0/#inbox       chrome
    Maximize Browser Window
    input text      id:identifierId        vineeth.macharla@terralogic.com
    click element   class:VfPpkd-vQzf8d
    Sleep           5s

    input text      name:password        Vineeth.m1@
    click element   class:VfPpkd-vQzf8d
    sleep           5s
    capture page screenshot        Login.png
    sleep           5s
    click element   xpath://div[contains(text(), 'Compose')]
    sleep           5s
    input text     xpath:(//textarea[@class='vO'])[1]         vineeth.macharla2479@gmail.com
    sleep           5s
     input text      name:subjectbox                     Robot framework : Sendingscreenshotsmailautomation
    sleep           6s
    # click element       xpath://div[@class="a1 aaA aMZ"]
     sleep           5s
     Choose File    xpath://input[@type='file']   C:/Users/Vineeth -2443/PycharmProjects/pythonProject5/login.png
     sleep            5s
     click element  xpath://div[@class="T-I J-J5-Ji aoO v7 T-I-atl L3"]



