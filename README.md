# Home Test API - Karate

This project contains API tests for the **Inventory API** using the **Karate (BDD) testing framework** with Maven.

## Prerequisites
Before running the tests, ensure you have the following installed:
1.Java JDK 11+
2.Docker
3.Git (for cloning/pushing the project)  

## Setup API

1. Pull the API Docker image:
docker pull automaticbytes/demo-app

2. Run the Docker container:
docker run -p 3100:3100 automaticbytes/demo-app

3.Verify the API is running:
http://localhost:3100/api

The base URL for tests is:
http://localhost:3100/api

## Project Structure
Test_API_KARATE/
├── pom.xml
├── README.md
└── src
    └── test
        └── java
            └── Tests
                      └──users
                              ├── Add_item.feature
                              ├── Filter_by_id.feature
                              ├── Inventory.feature
                              ├── TestRunner.java
                              ├── Validate.feature
                              └── Validate_item_present_in_inventory.feature 

                              
## Build and run tests

Run from IDE

1.Clone the project from remote repository to local folder and open the project in IntelliJ, Eclipse, or VS Code.

2.In TesrRunner class provide the path of the feature file which need to be executed

3.Right-click TestRunner.java → Run as JUnit Test.

4.Results will appear in the IDE console.


## Verify Test Results
All scenarios should pass if the API is running correctly.
You can check:
target/karate-reports
for detailed HTML or XML reports.


## Test Scenarios Covered
1.Get all menu items – Validate at least 9 items with fields id, name, price, image.

2.Filter by id – GET /inventory/filter?id=3 and validate correct item data.

3.Add item for non-existent id – POST new item and expect status 200.

4.Add item for existing id – POST duplicate item and expect status 400.

5.Add item with missing information – POST incomplete JSON and expect status 400 with message "Not all requirements are met".

6.Validate recent added item is present – GET /inventory and verify the added item exists.




