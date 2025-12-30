Feature: Add item for existent id

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

  Scenario: Add inventory item

    # POST the item
    Given path 'api', 'inventory', 'add'
    And header Content-Type = 'application/json'
    And request item
    When method post
    Then status 400

