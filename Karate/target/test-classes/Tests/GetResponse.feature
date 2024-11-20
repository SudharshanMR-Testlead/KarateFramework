Feature: Get API Demo

  Background: 
    * url 'https://reqres.in/api'
    * header Accept = 'application/json'
# url=https://reqres.in/api/user?page=2
  Scenario: Get Demo One
    Given path '/users'
    And param page = 2
    When method GET
    Then status 200
    And print response
    And print responseStatus
    And print responseTime
    And print responseHeaders
    And print responseCookies
    And match response.data[0].first_name != null
    And assert response.data.length == 6
    And match response.data[1].id == 8
    And match response.data[0].first_name == 'Michael'
