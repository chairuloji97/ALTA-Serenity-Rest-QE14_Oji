package starter.stepdef;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.When;
import net.serenitybdd.rest.SerenityRest;
import net.thucydides.core.annotations.Steps;
import starter.reqres.ReqresAPI;
import starter.reqres.ReqresResponses;
import starter.utils.Constants;

import java.io.File;

import static org.hamcrest.Matchers.equalTo;

public class RegisterUserStepDef {
    @Steps
    ReqresAPI reqresAPI;

    @Given("Register user with json {string}")
    public void registerUserWithJson(String json) {
        File jsonFile = new File(Constants.REQ_BODY + json);
        reqresAPI.postRegisterUser(jsonFile);
    }

    @When("Send request post register user")
    public void sendRequestPostRegisterUser() {
        SerenityRest.when()
                .post(ReqresAPI.REGISTER_USER);
    }

    @And("Responses body page should be {int}")
    public void responsesBodyPageShouldBe(int id) {
        SerenityRest.and()
                .body(ReqresResponses.ID, equalTo(id));
    }

    @Given("Register user with invalid json {string}")
    public void registerUserWithInvalidJson(String json) {
        File jsonFile = new File(Constants.REQ_BODY + json);
        reqresAPI.postRegisterUser(jsonFile);
    }
}
