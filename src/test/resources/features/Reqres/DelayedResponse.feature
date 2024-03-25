Feature: Delayed Response
  Get delayed response with valid parameter

  @Tugas
#    Positive
  Scenario: Get delayed response with valid parameter
    Given Get delayed response with valid parameter 3
    When Send request get delayed response
    Then Status code should be 200
    And Validate json schema "DelayedResponseJsonSchema.json"

#    Negative
  Scenario: Get delayed response with invalid parameter
    Given Get delayed response with invalid parameter "clbk1"
    When Send request get delayed response
    Then Status code should be 404

