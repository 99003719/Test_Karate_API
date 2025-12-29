Feature: Validate recently added inventory item

  Background:
    * url 'http://localhost:3100'

  Scenario: Validate recently added item is present with correct data
    # Step 1: GET full inventory
    Given path 'api', 'inventory'
    When method get
    Then status 200

    # Step 2: Define the expected item
    * def expectedItem =
      """
      {
        "id": "10",
        "name": "Hawaiian",
        "image": "hawaiian.png",
        "price": "$14"
      }
      """

    # Step 3: Check that the expected item exists in the inventory
    * match response.data contains expectedItem