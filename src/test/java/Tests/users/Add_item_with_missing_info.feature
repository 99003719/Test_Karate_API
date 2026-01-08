Feature: Add item with missing information

  Background:
    * def incompletepayload = read('classpath:Tests/data/incomplete_payload.json')

  Scenario: Try to add item with missing information
    Given url baseUrl
    And path 'api', 'inventory', 'add'
    And request incompletepayload
    When method post
    * assert responseStatus == 400
    * match response contains 'Not all requirements are met'





