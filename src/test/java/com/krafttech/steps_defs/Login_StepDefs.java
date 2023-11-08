package com.krafttech.steps_defs;

import com.krafttech.pages.DashboardPage;
import com.krafttech.pages.LoginPage;
import com.krafttech.utilities.ConfigurationReader;
import com.krafttech.utilities.Driver;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.Assert;

public class Login_StepDefs {
    LoginPage loginPage=new LoginPage();
    DashboardPage dashboardPage=new DashboardPage();
    @Given("The user is on the login page")
    public void the_user_is_on_the_login_page() {
       // System.out.println("Open browser and navigate to login page");
        String url= ConfigurationReader.get("url");
        Driver.get().get(url);
    }

    @When("The user enters valid credentials that belongs to Mike")
    public void the_user_enters_valid_credentials_that_belongs_to_Mike() {
       // System.out.println("Enter valid credentials that belongs to Mike");
        loginPage.login(ConfigurationReader.get("mikeEmail"),ConfigurationReader.get("mikePassword"));
    }

    @Then("The user should be able to login")
    public void the_user_should_be_able_to_login() {
       // System.out.println("Verify that user succesfully logs in");
        Assert.assertTrue(dashboardPage.dashboardPageSubTitle.isDisplayed());
    }
    @When("The user enters valid credentials that belongs to John")
    public void theUserEntersValidCredentialsThatBelongsToJohn() {
        loginPage.loginAsJhon();
    }

    @When("The user enters valid credentials that belongs to Test")
    public void theUserEntersValidCredentialsThatBelongsToTest() {
        loginPage.login();
    }

    @When("The user enters valid credentials that belongs to Morgan")
    public void theUserEntersValidCredentialsThatBelongsToMorgan() {
        loginPage.loginAsMorgan();

    }

    @When("The user logs in using {string} and {string}")
    public void theUserLogsInUsingAnd(String email, String password) {
        loginPage.login(email, password);
    }

    @And("The user name should be {string}")
    public void theUserNameShouldBe(String name) {
        Assert.assertEquals(dashboardPage.userAccountName.getText(),name);
    }

    @Then("Verify that {string} is visible on the dashboard")
    public void verify_that_is_visible_on_the_dashboard(String name) {
        String expected=name;
        String actual= dashboardPage.getAccountName();
    }
    @Then("Verify that {string} is visible on the login page")
    public void verify_that_is_visible_on_the_login_page(String message) {
        String expected=message;
        try {
            String actual=loginPage.passwordEmailWarningMessage.getText();
            Assert.assertEquals(expected, actual);
        } catch (Exception e) {
            String actual=loginPage.pleaseEnterYourEmail.getText();
            if(actual.isEmpty()){
                actual=loginPage.pleaseEnterYourPassword.getText();
            }
            Assert.assertEquals(expected,actual);
        }
    }
}
