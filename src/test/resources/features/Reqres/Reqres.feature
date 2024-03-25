Feature: Serenity Rest QE 14

  @Latihan
  Scenario Outline: Get list user with valid parameter page
    Given Get list user with parameter page <page>
    When Send request get list users
    Then Status code should be 200
    And Responses body page should be <page>
    Examples:
      | page |
      | 1    |
      | 2    |

  @Latihan
  Scenario: Post create with valid json
    Given Create user with valid json "CreateUser.json"
    When Send request create new user
    Then Status code should be 201
    And Response body name should be "M Chairul Fauzi" and job is "QA Engineer"

  @Latihan
  Scenario Outline: Update user with valid json and user id
    Given Update user with valid json "<json>" and user id <id>
    When Send request update user
    Then Status code should be 200
    Examples:
      | id | json             |
      | 1  | UpdateUser1.json |
      | 2  | UpdateUser2.json |
      | 3  | UpdateUser3.json |

  @Latihan
  Scenario: Delete user with valid user id
    Given Delete user with user id 2
    When Send request delete user
    Then Status code should be 204