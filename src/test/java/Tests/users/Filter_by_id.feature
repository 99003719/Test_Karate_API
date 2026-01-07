Feature: Filter inventory by id

  Background:
    * def expectedresponse = read('classpath:Tests/users/expected_response.json')

  Scenario: Get inventory item by id and validate response
    Given url baseUrl
    And path 'api', 'inventory', 'filter'
    And param id = 3
    When method get
    Then status 200
    And match response == expectedresponse
