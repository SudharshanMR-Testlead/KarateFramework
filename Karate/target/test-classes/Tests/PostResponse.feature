Feature: Post API Demo

  Background: 
    * url 'https://petstore.swagger.io'
    * header Accept = 'application/json'
    * def expectedOutput = read('response1.json')
    

  Scenario: Post Demo
    Given path '/v2/pet'
    And request {"id": 0,"category": {"id": 0,"name": "Rudo1"},"name": "doggie","photoUrls": ["string"],"tags": [{"id": 0,"name": "Shadow1"}],"status": "available"}
    When method post
    Then status 200
    And print response
    And print responseHeaders
    And print responseCookies
    And print responseStatus
    And match response == {"id": 9223372036854771025,"category": {"id": 0,"name": "Rudo1"  },  "name": "doggie",  "photoUrls": [    "string"  ],  "tags": [    {"id": 0,"name": "Shadow1"    }  ],  "status": "available"}
    
    Scenario: Post Demo Reading Json from file
    Given path '/v2/pet'
    And def projectPath = karate.properties['user.dir']
    And print projectPath
    And def filePath = projectPath+'\src\test\java\Data\request.json'
    And print filePath
    And def requestBody = filePath
    When method post
    Then status 200
    And print response
    And print responseHeaders
    And print responseCookies
    And print responseStatus
    And match response == expectedOutput