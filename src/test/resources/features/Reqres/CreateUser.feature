Feature: Create User
  Create user with json

#  Positive
#  Create successful
  @Tugas
  Scenario Outline: Post create user with valid json
    Given Create user with valid json valid json "CreateUserTugas.json"
    When Send request create new User
    Then Status code should be 201
    And Response body name should be "<name>" and "<job>"
    Examples:
      | name     | job           |
      | Napoleon | Ceo pt rustam |
