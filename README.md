# Mobile Calculator Automation

This repository contains the test automation for a simple Android calculator application using Robot Framework and Appium.

https://github.com/user-attachments/assets/066ccd08-96be-4343-985e-3dc7b70cbac5


## Project Description

This project was developed to test the basic functionalities of a calculator, including addition, subtraction, multiplication, and division operations. The goal is to ensure that the operations are performed correctly and that the application responds as expected.

## Project Structure

- **app/**: Contains the APK of the calculator application.
- **config/**: Configuration file for mapping libraries and resources.
- **pages/**: Mapping of page elements used in the tests.
- **resource/**: Resource files including custom keywords and reusable functions.
- **test/**: Contains the test cases that validate the functionalities of the calculator.
- **results/**: Directory where the test results are stored.

## Pré-requisitos

To run this project, you will need to have the following software installed:

- [Python](https://www.python.org/downloads/)
- [Appium](http://appium.io/)
- [Robot Framework](https://robotframework.org/)

You can also install all necessary dependencies using the `requirements.txt` file:

```bash
pip install -r requirements.txt
```

## Setup
1. Clone this repository:

    ```bash
    git clone https://github.com/lipealmeidas/hanzo-mobile.git
    ```
2. Navigate to the project directory:

    ```bash
    cd mobile-calculator-automation
    ```
3. Set up Appium as needed to connect to your Android device or emulator.

## Running the Tests

1. Start the Appium server:

    ```bash
    appium -pa wd/hub
    ```
2. Run the tests with Robot Framework:

    ```bash
    robot -d results test/calculator_test.robot
    ```

## Test File Structure
![mobile project](https://github.com/user-attachments/assets/eaea0bc9-56a7-40bd-b10f-a6f0dfe089ab)

### Sample Test Case

```robot
*** Test Cases ***
Validate Addition Functionality
    Given The Calculator App Is Open
    And I Input The First Number As "5"
    And I Input The Second Number As "3"
    When I Press The "SUM" Button
    Then The Result Should Display "8"
```

## Technologies Used

- **Robot Framework**: Used to define and execute test cases.
- **Appium**: Automation tool for mobile applications.

## Contact

For more information, contact via email at [souza.felipedealmeida@gmail.com](mailto:souza.felipedealmeida@gmail.com).

