Feature: Add item with missing information

  Background:
    * url 'http://localhost:3100'

  Scenario: Try to add item with missing information
    * def incompleteItem =
      """
      {
        "name": "Harry",
        "image": "incomplete.png",
        "price": "$20"
      }
      """
    Given path 'api', 'inventory', 'add'
    And request incompleteItem
    When method post
    * assert responseStatus == 400
    * match response contains 'Not all requirements are met'





