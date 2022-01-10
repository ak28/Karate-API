
Feature:register user
  Background:
    * def jsonPayload = read('../data/Register.json')

  Scenario: Register user token
    Given url 'https://reqres.in/api/register'
    And request jsonPayload
    When method POST
    Then status 200
    Then print 'response -----', response
