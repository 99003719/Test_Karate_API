Feature: Add item for existent id

  Background:

    * def requestBody = read('classpath:Tests/data/add_existing_item_payload.json')

  Scenario: Add inventory item

      #Adding the existing item to validate the status code
    Given url baseUrl
    And path 'api', 'inventory', 'add'
    And request requestBody
    When method post
    Then status 400

