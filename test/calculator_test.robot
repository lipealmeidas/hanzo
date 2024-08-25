*** Settings ***
Documentation       Test File

Resource            ../config/package.resource

Suite Setup         Abrir Aplicacao
Suite Teardown      Fechar Aplicacao


*** Test Cases ***
Scenario: Validate Addition Functionality
    Given The Calculator App Is Open
    And I Input The First Number As "5"
    And I Input The Second Number As "3"
    When I Press The "SUM" Button
    Then The Result Should Display "8"

Scenario: Validate Subtraction Functionality
    Given The Calculator App Is Open
    And I Input The First Number As "10"
    And I Input The Second Number As "4"
    When I Press The "SUBTRACT" Button
    Then The Result Should Display "6"

Scenario: Validate Multiplication Functionality
    Given The Calculator App Is Open
    And I Input The First Number As "7"
    And I Input The Second Number As "6"
    When I Press The "MULTIPLY" Button
    Then The Result Should Display "42"

Scenario: Validate Division Functionality
    Given The Calculator App Is Open
    And I Input The First Number As "20"
    And I Input The Second Number As "5"
    When I Press The "DIVIDE" Button
    Then The Result Should Display "4"

Scenario: Validate Division By Zero
    Given The Calculator App Is Open
    And I Input The First Number As "15"
    And I Input The Second Number As "0"
    When I Press The "DIVIDE" Button
    Then The App Should Display An Appropriate Error Message Or Handle The Division By Zero Case Correctly

Scenario: Validate Empty Input Fields For Addition
    Given The Calculator App Is Open
    When I Press The "SUM" Button
    Then The App Should Display An Appropriate Error Message Or Handle The Empty Input Fields Correctly

Scenario: Validate Empty Input Fields For Subtraction
    Given The Calculator App Is Open
    When I Press The "SUBTRACT" Button
    Then The App Should Display An Appropriate Error Message Or Handle The Empty Input Fields Correctly

Scenario: Validate Empty Input Fields For Multiplication
    Given The Calculator App Is Open
    When I Press The "MULTIPLY" Button
    Then The App Should Display An Appropriate Error Message Or Handle The Empty Input Fields Correctly

Scenario: Validate Empty Input Fields For Division
    Given The Calculator App Is Open
    When I Press The "DIVIDE" Button
    Then The App Should Display An Appropriate Error Message Or Handle The Empty Input Fields Correctly
