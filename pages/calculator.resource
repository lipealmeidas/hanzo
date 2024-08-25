*** Settings ***
Documentation       Mapping of Automation Page Elements

Resource            ../config/package.resource


*** Variables ***
${homepage_app}     xpath=//android.widget.TextView[@text="Simple Calculator Android"]
${fist_number}      id=com.example.leonardomenezes.simplecalculatorandroid:id/android_field_first_number
${second_number}    id=com.example.leonardomenezes.simplecalculatorandroid:id/android_field_second_number
${sum}              id=com.example.leonardomenezes.simplecalculatorandroid:id/android_button_sum
${subtract}         id=com.example.leonardomenezes.simplecalculatorandroid:id/android_button_sub
${multiply}         id=com.example.leonardomenezes.simplecalculatorandroid:id/android_button_mult
${divide}           id=com.example.leonardomenezes.simplecalculatorandroid:id/android_button_div
${results}          id=com.example.leonardomenezes.simplecalculatorandroid:id/android_result_text
${cannot_divide}    Cannot divide by zero!
${empty_message}    xpath=//android.widget.Toast[@text="Fill all inputs!"]
