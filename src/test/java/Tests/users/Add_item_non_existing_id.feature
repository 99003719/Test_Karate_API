Feature: Add item for non existent id

  Background:
    * def requestBody = read('classpath:Tests/data/add_item_payload.json')
    * def dynamicId = java.util.UUID.randomUUID().toString()
    * set requestBody.id = dynamicId


  Scenario: Add inventory item
    # POST new item to the inventory
    Given url baseUrl
    And path 'api', 'inventory', 'add'
    And request requestBody
    When method post
    Then status 200
    * def ExpectedItem = requestBody







