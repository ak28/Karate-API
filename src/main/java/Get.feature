Feature: get API feature



  Scenario: get user details - user  found
    * def expectedOutput = read('../data/Result.json')



    Given url 'https://reqres.in/api/users/2'
    When method GET
    Then status 200
    Then print response
    And match response == expectedOutput
    And match response.data.id == 2


  Scenario: get Delay response


    * def expectedOutput = read('../data/delay.json')

    Given url 'https://reqres.in/api/users?delay=3'
    When method GET
    Then status 200
    Then print response
    And match response == expectedOutput




  Scenario: get user details - all users
    * def expectedOutput = read('../data/Allusers.json')

    Given url 'https://reqres.in/api/users?page=2'
    When method GET
    Then status 200
    Then print response
    And match response == expectedOutput

