*** Settings ***
Library         AppiumLibrary

# {
#   "appium:automationName": "UiAutomator2",
#   "platformName": "Android",
#   "appium:deviceName": "Android Emulator",
#   "appium:app": "C:\\QAninjaMobile\\twp\\app\\twp.apk",
#   "appium:udid": "emulator-5554"
# }

*** Test Cases ***
Deve abrir a tela principal
    Open Application    http://localhost:4723/wd/hub
    ...                 appium:automationName=UiAutomator2
    ...                 platformName=Android
    ...                 appium:deviceName=Android Emulator
    ...                 appium:app=${EXECDIR}/app/twp.apk
    ...                 appium:udid=emulator-5554

    Wait Until Page Contains    Training Wheels Protocol  5
    Wait Until Page Contains    Mobile Version
    Close Application