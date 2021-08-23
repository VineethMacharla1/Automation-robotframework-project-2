#Automate all keyboard actions
*** Settings ***
Library  SeleniumLibrary
*** Variables ***

*** Test Cases ***
Keyboardactions
    open browser        https://demoqa.com/elements                            chrome
    Maximize Browser Window
    sleep               9s
    presskeys           xpath://li[@id="item-0"]                               Enter
    sleep               5s
    presskeys           xpath://input[@class=" mr-sm-2 form-control"]          vineethmacharla
    presskeys           xpath://input[@class=" mr-sm-2 form-control"]          TAB
    Presskeys           xpath://input[@class="mr-sm-2 form-control"]           vineeth.macharla@terralogic.com
    presskeys           xpath://input[@class="mr-sm-2 form-control"]           TAB
    Presskeys           None                                                   16-10-34,warangal,shivnagar,506002.
    sleep               3s
    presskeys           None                                                   CTRL+A
    sleep               3s
    Presskeys           None                                                   CTRL+C
    Presskeys           xpath://*[@id="currentAddress-wrapper"]/div[2]         TAB
    Presskeys           None                                                   CTRL+V
    Sleep               5s
    presskeys           None                                                   CTRL+A
    Sleep               5s
    presskeys           None                                                   DELETE
    Sleep               5s
    presskeys           xpath://textarea[@id="permanentAddress"]               16-1-34,warangal,shivnagar,506002.
    presskeys           xpath://button[@class="btn btn-primary"]               Enter
