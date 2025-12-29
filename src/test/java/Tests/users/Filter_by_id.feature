Feature: Filter inventory by id

  Background:
    # Set the base URL for the API
    * url 'http://localhost:3100'

  Scenario: Get inventory item by id and validate response
    Given path 'api', 'inventory', 'filter'
    And param id = 3
    When method get
    Then status 200
    And match response ==
      """
      {
        "id": "3",
        "name": "Baked Rolls x 8",
        "image": "roll.png",
        "price": "$10"
      }
      """