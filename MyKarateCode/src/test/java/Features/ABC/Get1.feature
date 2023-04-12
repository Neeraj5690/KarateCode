Feature: Get API Demo

  Background: 
    * url 'https://reqres.in/api'
    * header Accept = 'application/json'

  # First Get request
  @GetRequest
  Scenario: Get demo 1
    Given path '/users?page=3'
    When method GET
    Then status 200
    And print response

  # Second Get request with Background Concept
  @GetRequest
  Scenario: Get demo 2
    Given path '/users?page=2'
    When method GET
    Then status 200
    And print response

  # Third Get request with Params Concept
  @GetRequest
  Scenario: Get demo 3
    Given path '/users'
    And param page = 2
    When method GET
    Then status 200
    And print response

  # Fourth Get request with assertion Concept
  @GetSmoke
  Scenario: Get demo 4
    Given path '/users'
    And param page = 2
    When method GET
    Then status 200
    And print response
    And match response.data[0].first_name == 'Michael'
    And assert response.data.length == 6
    And match $.data[3].id == 10
