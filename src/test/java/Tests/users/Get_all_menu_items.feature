Feature: Get all menu items feature


  Scenario: Get all menu items
    Given url baseUrl
    When path 'api','inventory'
    And method GET
    Then status 200
    * karate.log('Inventory response:', response)

    # Validate response contains at least 9 items
    And assert response.data.length >= 9

    # Validate required fields for each item
    And match each response.data ==
      """
      {
        id: '#present',
        name: '#present',
        price: '#present',
        image: '#present'
      }
      """

