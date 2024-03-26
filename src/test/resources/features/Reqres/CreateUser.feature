Feature: Create User
  Create user with json

#  Positive
  @Tugas
  Scenario Outline: Post create user with valid json
    Given Create user with valid json "CreateUserTugas.json"
    When Send request create new User
    Then Status code should be 201
    And Response body name should be "<name>" and "<job>"
    Examples:
      | name     | job           |
      | Napoleon | Ceo pt rustam |

#   Negative
  @Tugas
  Scenario Outline: Post create user with invalid json
    Given Create user with invalid json "InvalidCreateUserTugas.json"
    When Send request create new User
    Then Status code should be 400
    Examples:
      | name     |
      | Napoleon |