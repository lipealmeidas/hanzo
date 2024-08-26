*** Settings ***
Documentation       Test Keywords File

Resource            ../config/package.resource


*** Keywords ***
Open App
    Open Application
    ...                 http://localhost:4723/wd/hub
    ...                 automationName=UiAutomator2
    ...                 platformName=Android
    ...                 deviceName=emulator-5554
    ...                 app=${CURDIR}${/}..${/}app${/}app.apk
