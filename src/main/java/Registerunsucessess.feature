
Feature:unregister user
  Background:
    * def jsonPayload1 = read('../data/unsucess.json')
    * def jsonPayload2 = read('../data/Login.json')
    * def jsonPayload3 = read('../data/unsucessessLogin.json')

  Scenario: UnRegister user
    Given url 'https://reqres.in/api/register'
    And request jsonPayload1
    When method POST
    Then status 400
    Then print 'response -----', response


  Scenario: Login user
    Given url 'https://reqres.in/api/login'
    And request jsonPayload2
    When method POST
    Then status 200
    Then print 'response -----', response


  Scenario: Unsuccess login user
    Given url 'https://reqres.in/api/login'
    And request jsonPayload3
    When method POST
    Then status 400
    Then print 'response -----', response