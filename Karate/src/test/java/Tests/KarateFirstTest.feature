Feature: Sample API tests

  Scenario: Test a sample Get API
    Given url 'https://api.restful-api.dev/objects'
    When method GET
    Then status 200
