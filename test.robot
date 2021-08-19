*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${message}  HI,this mail is sent from automation-robotframework

*** Test Cases ***
LoginTest
    open browser    https://mail.google.com/mail/u/0/#inbox  chrome
    Maximize Browser Window
    input text      id:identifierId      terralogicbanglore@gmail.com
    click element   class:VfPpkd-vQzf8d
    Sleep           5s
    input text      name:password       Vineeth.m1@
    click element   class:VfPpkd-vQzf8d
    sleep           5s
ComposeTest
    click element   xpath://div[contains(text(), 'Compose')]
    sleep           5s
    input text      xpath:(//textarea[@class='vO'])[1]        vineeth.macharla2479@gmail.com
    sleep           3s
    input text      name:subjectbox         Robot framework : Mail automation
    sleep           5s
    input text      xpath://div[@class="Am Al editable LW-avf tS-tW"]      ${message}
    sleep           5s
    click element   xpath://div[@class="T-I J-J5-Ji aoO v7 T-I-atl L3"]
    sleep           5s
ValidateTest
    click element   xpath://a[@href="https://mail.google.com/mail/u/0/#sent"]
    sleep           5s
    click element   xpath:(//tr[@class='zA yO'])[1]
    sleep           2s
    ${results_on_page}  Get WebElements         xpath:(//div[@class="a3s aiL "])[1]
    FOR        ${elements}       IN      @{results_on_page}
    ${text}=     Get Text       ${elements}
    Log To Console     ${text}
    END
      #Page Should Contain     ${message}name:password
    #sleep           5s
#OutputMessage
#    ${output}        get text    xpath:(//div[@class="a3s aiL "])[1]
#    Log To Console  ${output}
*** Keywords ***
