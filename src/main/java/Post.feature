Feature: Post call


  Background:
    * def jsonPayload = read('../data/payload.json')
    * def jsonPayload2 = read('../data/Put.json')


  Scenario: Post user details
    Given url 'https://reqres.in/api/users'
    And request jsonPayload
    And header Content-Type = 'text/plain'
    When method POST
    Then status 201
    Then print 'response -----', response
   # And match response.id == '#present'



  #Background:

  Scenario: Update user details
    Given url 'https://reqres.in/api/users/2'
    And request jsonPayload2
    And header Content-Type = 'text/plain'
    When method PUT
    Then status 200
    Then print 'response -----', response
