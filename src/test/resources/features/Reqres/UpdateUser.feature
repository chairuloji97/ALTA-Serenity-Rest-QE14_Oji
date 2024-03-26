Feature: Update User
  update user with valid user
#  Positive
  @Tugas
  Scenario Outline: Update user with valid json and user id
    Given Update user with valid json "<json>" and user id <id>
    When Send request update user
    Then Status code should be 200
    Examples:
      | id | json             |
      | 1  | UpdateUser1.json |
      | 2  | UpdateUser2.json |
      | 3  | UpdateUser3.json |
#    Negative
  @Tugas
  Scenario Outline: Update user with valid json and invalid user id
    Given Update user with valid json "<json>" and invalid user id <id>
    When Send request update user
    Then Status code should be 404
    Examples:
      | id   | json             |
      | -198 | UpdateUser1.json |
      | 223  | UpdateUser2.json |
      | 365  | UpdateUser3.json |

  @Tugas
  Scenario Outline: Update user with invalid json and valid user id
    Given Update user with invalid json "<json>" and valid user id <id>
    When Send request update user
    Then Status code should be 404
    Examples:
      | id | json                    |
      | 4  | UpdateUserInvalid1.json |
      | 5  | UpdateUserInvalid2.json |