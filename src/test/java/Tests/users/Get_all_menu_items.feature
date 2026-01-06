Feature: Get all menu items feature

  Background:
    Given url 'http://localhost:3100/api'

  Scenario: Get all menu items
    When path 'inventory'
    And method GET
    Then status 200

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

