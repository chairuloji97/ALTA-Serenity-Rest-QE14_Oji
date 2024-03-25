package starter.stepdef;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.When;
import net.serenitybdd.rest.SerenityRest;
import net.thucydides.core.annotations.Steps;
import starter.reqres.ReqresAPI;
import starter.utils.Constants;

import java.io.File;

import static org.hamcrest.Matchers.equalTo;


public class UpdateUserStepDef {
    @Steps
    ReqresAPI reqresAPI;

    @Given("Update user with valid json {string} and id {int}")
    public void updateUserWithValidJson(int id, String json) {
        File jsonFile = new File(Constants.REQ_BODY + json);
        reqresAPI.putUpdateUser(id, jsonFile);
    }

    @When("Send request put update user")
    public void sendRequestPutUpdateUser() {
        SerenityRest.when().put(ReqresAPI.UPDATE_USER);
    }

    @Given("Update user with valid json {string} and invalid user id {}")
    public void updateUserWithValidJsonAndInvalidUserId(String json, int id) {
        File jsonFile = new File(Constants.REQ_BODY + json);
        reqresAPI.putUpdateUser(id, jsonFile);
    }

    @Given("Update user with invalid json {string} and valid user id {}")
    public void updateUserWithInvalidJsonAndValidUserId(String json, int id) {
        File jsonFile = new File(Constants.REQ_BODY + json);
        reqresAPI.putUpdateUser(id, jsonFile);
    }
}
