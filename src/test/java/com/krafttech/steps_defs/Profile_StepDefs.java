package com.krafttech.steps_defs;

import com.krafttech.pages.DashboardPage;
import com.krafttech.pages.OverviewPage;
import com.krafttech.utilities.BrowserUtils;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

public class Profile_StepDefs {
    @When("User should go to my profile with {string}")
    public void user_should_go_to_my_profile_with(String tabName) {
        DashboardPage dashboardPage=new DashboardPage();
        dashboardPage.navigateToModule(tabName,"My Profile");
        BrowserUtils.waitFor(3);
    }
    @When("User should navigate to {string}")
    public void user_should_navigate_to(String tagName) {
        OverviewPage overviewPage=new OverviewPage();
        overviewPage.tapOnTab(tagName);
    }


}
