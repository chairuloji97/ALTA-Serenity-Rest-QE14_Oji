package starter.stepdef;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.When;
import net.serenitybdd.rest.SerenityRest;
import net.thucydides.core.annotations.Steps;
import starter.reqres.ReqresAPI;

public class DelayedResponseStepDef {
    @Steps
    ReqresAPI reqresAPI;

    @Given("Get delayed response with valid parameter {int}")
    public void getDelayedResponseWithValidParameter(int delay) {
        reqresAPI.getDelayedResponse(delay);
    }

    @When("Send request get delayed response")
    public void sendRequestGetDelayedResponse() {
        SerenityRest.when().get(ReqresAPI.DELAYED_RESPONSE);
    }

    @Given("Get delayed response with invalid parameter {string}")
    public void getDelayedResponseWithInvalidParameter(String delay) {
        reqresAPI.getDelayedResponseInvalid(delay);
    }
}
