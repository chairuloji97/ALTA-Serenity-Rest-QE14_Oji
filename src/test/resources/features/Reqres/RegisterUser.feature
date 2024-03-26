Feature: Register user
  Register user with json
#  Positive
#  Register Successful
  @Tugas
  Scenario Outline: Register user with valid json
    Given Register user with json "ValidRegisterUser.json"
    When Send request post register user
    Then Status code should be 200
    And Responses body page should be <id>
    And Validate json schema "RegisterUserJsonSchema.json"
    Examples:
      | id |
      | 4  |

#    Negative
#    Register Unsuccessful
  @Tugas
  Scenario Outline: Register user with invalid json
    Given Register user with invalid json "<JSON>"
    When Send request post register user
    Then Status code should be 400
    Examples:
      |                                    | JSON                                            |
      | Invalid Email and Valid Password   | InvalidEmailRegisterUser.json                   |
      | Valid Email and Invalid Password   | InvalidPasswordRegisterUser.json                |
      | Invalid Email and inValid Password | InvalidEmailAndInvalidPasswordRegisterUser.json |
