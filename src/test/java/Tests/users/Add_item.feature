Feature: Add inventory item with dynamic status

  Background:
    * url 'http://localhost:3100'
    * def item =
      """
      {
        "id": "10",
        "name": "Hawaiian",
        "image": "hawaiian.png",
        "price": "$14"
      }
      """

  Scenario: Add inventory item dynamically
    # Step 1: Check if the item exists
    Given path 'api', 'inventory', 'filter'
    And param id = '10'
    When method get
    Then status 200

    # Step 2: Determine expected status
    * def exists = response.data && response.data.length > 0
    * def expectedStatus = exists ? 400 : 200
    * print 'Item exists:', exists, 'Expected POST status:', expectedStatus

    # Step 3: POST the item
    Given path 'api', 'inventory', 'add'
    And header Content-Type = 'application/json'
    And request item
    When method post

    # Step 4: Dynamically assert the response status
    * assert responseStatus == expectedStatus