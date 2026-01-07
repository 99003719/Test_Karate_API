Feature: Add item for non existent id

  Background:
    * def requestBody = read('classpath:Tests/users/add_item_payload.json')
    * def dynamicId = java.lang.System.currentTimeMillis().toString()
    * set requestBody.id = dynamicId


  Scenario: Add inventory item
    # POST the item
    Given url baseUrl
    And path 'api', 'inventory', 'add'
    And request requestBody
    When method post
    Then status 200

      #validate menu item
    Given url baseUrl
    And path 'api', 'inventory'
    When method get
    Then status 200
    # Validate item exists with correct data
    And match response.data contains requestBody





