Feature: sample karate test script
  for help, see: https://github.com/karatelabs/karate/wiki/IDE-Support

  Background:
    * url 'https://api.demoblaze.com'

  Scenario Outline: Crear nuevos usuarios
    Given path 'signup'
    And request  {"username":'<username>',"password":'<password>'}
    When method post
    Then status 200


    Examples:
      | username |password|
      | test1dd |password1dd|

  Scenario Outline: Intentar crear un usuario ya existente
    Given path 'signup'
    And request  {"username":'<username>',"password":'<password>'}
    When method post
    Then status 200


    Examples:
      | username |password|
      | test1dd |password1dd|

  Scenario Outline: Usuario y password correcto
    Given path 'login'
    And request  {"username":'<username>',"password":'<password>'}
    When method post
    Then status 200


    Examples:
      | username |password|
      | test1dd |password1dd|


  Scenario Outline: Usuario y password incorrecto
    Given path 'login'
    And request  {"username":'<username>',"password":'<password>'}
    When method post
    Then status 200


    Examples:
      | username |password|
      | anonimus |1dd|


