Feature: Put API Demo

  Scenario: Put Demo1
    Given url 'https://petstore.swagger.io/v2/user/Sudharshan'
    And request {"id": 0,  "username": "string",  "firstName": "string",  "lastName": "string",  "email": "string",  "password": "string",  "phone": "string",  "userStatus": 0}
    When method PUT
    Then status is 200
    And print response
