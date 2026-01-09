Feature: Validate recent added item is present in the inventory feature


  Scenario: Validate recent added item is present in the inventory
    #validate the added item is present in the inventory
    * def addItem = call read('classpath:Tests/users/Add_item_non_existing_id.feature')
    * def expectedItem = addItem.ExpectedItem

    Given url baseUrl
    And path 'api', 'inventory'
    When method get
    Then status 200
    And match response.data contains expectedItem
    * print expectedItem


