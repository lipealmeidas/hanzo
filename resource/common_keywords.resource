*** Settings ***
Documentation       Test Keywords File

Resource            ../config/package.resource


*** Keywords ***
Abrir Aplicacao
    [Documentation]    Short description.
    Open Application
    ...                 http://localhost:4723/wd/hub
    ...                 automationName=UiAutomator2
    ...                 platformName=Android
    ...                 deviceName=emulator-5554
    ...                 app=${CURDIR}${/}..${/}app${/}app.apk

Fechar Aplicacao
    [Documentation]    Short description.
    Close Application
