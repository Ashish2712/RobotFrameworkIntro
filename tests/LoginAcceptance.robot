*** Settings ***
Library    SeleniumLibrary
#Library    Requests
Library    String
Library    Collections

Suite Setup    Run Keywords
Suite Teardown    Run Keywords    Close Browser



*** Test Cases ***
Login into Orange HRM
    Comment    This is my first robotframework test case!
    Open Browser    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login   firefox
    page should contain    OrangeHRM

