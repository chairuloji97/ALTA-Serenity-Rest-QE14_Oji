Feature: Login User
  User login with valid email and password

#  Positive
#  Login Successful
  @Tugas
  Scenario: Post login user with valid email and password
    Given Login user with valid json "ValidLoginUser.json"
    When Send request post login user
    Then Status code should be 200
    And Validate json schema "LoginUserJsonSchema.json"

#    Negative
#  Login Unsuccessful
  @Tugas
  Scenario Outline: Post login user with invalid json
    Given Login user with invalid JSON "<JSON>"
    When Send request post login user
    Then Status code should be 400
    Examples:
      |                                    | JSON                                         |
      | Invalid Email and Valid Password   | InvalidEmailLoginUser.json                   |
      | Valid Email and Invalid Password   | InvalidPasswordLoginUser.json                |
      | Invalid Email and invalid Password | InvalidEmailAndInvalidPasswordLoginUser.json |