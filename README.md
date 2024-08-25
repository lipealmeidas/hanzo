# Mobile Calculator Automation

This repository contains the test automation for a simple Android calculator application using Robot Framework and Appium. The project aims to validate the basic functionalities of the calculator, ensuring that mathematical operations are performed correctly and that the application responds as expected.

https://github.com/user-attachments/assets/066ccd08-96be-4343-985e-3dc7b70cbac5

## 📜 Project Description

The primary goal of this project is to automate the testing of a mobile calculator, covering basic arithmetic operations such as addition, subtraction, multiplication, and division. The automation is designed to ensure that the operations are executed accurately, even under different usage scenarios. Robot Framework was chosen for its simplicity and integration with Appium, making it easier to automate mobile applications.

## 🗂️ Project Structure

The project is organized as follows:

- **app/**: Contains the APK of the calculator application.
- **config/**: Configuration file for mapping libraries and resources used in the tests.
- **pages/**: Mapping of page elements used in the tests. This facilitates code maintenance, allowing quick updates to the tests when the interface changes.
- **resources/**: Contains resource files that include custom keywords and reusable functions, encapsulating the logic of common actions such as clicks, text input, and validations.
- **test/**: Contains the test cases that validate the functionalities of the calculator. Each test case is designed to be independent and modular, allowing easy expansion and modification.
- **results/**: Directory where the test results are stored. These results include detailed reports of test successes or failures, making it easier to analyze the tests.

## 🛠️ Prerequisites

Before running the project, make sure the following tools are installed:

- [Python](https://www.python.org/downloads/): The programming language used to run Robot Framework.
- [Appium](http://appium.io/): Automation tool for mobile applications.
- [Robot Framework](https://robotframework.org/): Test automation framework with easy-to-read syntax.

You can also install all necessary dependencies using the `requirements.txt` file:

```bash
pip install -r requirements.txt
```

## 🔧 Setup

Follow the steps below to configure and run the project:

1. Clone this repository to your local environment:
    ```bash
    git clone https://github.com/lipealmeidas/hanzo-mobile.git
    ```
2. Navigate to the project directory:
    ```bash
    cd mobile-calculator-automation
    ```
3. Configure Appium as needed to connect to your Android device or emulator.

## 🚀 Running the Tests

1. Start the Appium server:
    ```bash
    appium -pa wd/hub
    ```
2. Run the tests with Robot Framework:
    ```bash
    robot -d results test/calculator_test.robot
    ```
   This command will execute the tests and store the results in the `results/` directory.

## 📝 Test File Structure

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

## 📊 Technologies Used

- **Robot Framework**: Test automation framework that allows writing test cases in a simple and readable language.
- **Appium**: Automation tool that allows controlling mobile applications and interacting with them as a real user would.

## 📧 Contact

For more information or to discuss improvements to the project, feel free to reach out:

- **Email**: [souza.felipedealmeida@gmail.com](mailto:souza.felipedealmeida@gmail.com)
