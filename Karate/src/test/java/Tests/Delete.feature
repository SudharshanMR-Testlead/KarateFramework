Feature: Delete API Demo

  Scenario: Delete Demo
    Given url 'https://petstore.swagger.io/v2/user/test'
    When method DELETE
    Then status 200
    And print response
