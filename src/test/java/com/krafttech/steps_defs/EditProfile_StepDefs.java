package com.krafttech.steps_defs;

import com.github.javafaker.Faker;
import com.krafttech.pages.EditProfilePage;
import com.krafttech.utilities.BrowserUtils;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.Assert;
import org.openqa.selenium.Keys;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.Select;

public class EditProfile_StepDefs {
    @Then("User should verify the profile updated message")
    public void user_should_verify_the_profile_updated_message() {
        EditProfilePage editProfilePage=new EditProfilePage();
        Assert.assertEquals(editProfilePage.profileUpdateTitle.getText(),"Profile Updated" );
    }
    @When("User should fill out necessary input boxes and tap on save changes button")
    public void user_should_fill_out_necessary_input_boxes_and_tap_on_save_changes_button() {
        Faker faker=new Faker();
        Actions actions=new Actions(Driver.get());
        EditProfilePage editProfilePage=new EditProfilePage();
        Select select=new Select(editProfilePage.jobTitle);
        select.selectByIndex(3);
        select.getFirstSelectedOption().click();
        BrowserUtils.waitFor(1);
        actions.click(editProfilePage.aboutInputBox)
                .sendKeys(faker.name().fullName()+ Keys.TAB)
                .sendKeys(faker.company().name()+ Keys.TAB+ Keys.TAB+ Keys.TAB)
                .sendKeys(faker.internet().domainName()+ Keys.TAB)
                .sendKeys(faker.address().country()+ Keys.TAB)
                .sendKeys("java, selenium "+ Keys.TAB+ Keys.TAB+ Keys.TAB+ Keys.ENTER).perform();
    }
}
