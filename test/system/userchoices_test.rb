require "application_system_test_case"

class UserchoicesTest < ApplicationSystemTestCase
  setup do
    @userchoice = userchoices(:one)
  end

  test "visiting the index" do
    visit userchoices_url
    assert_selector "h1", text: "Userchoices"
  end

  test "creating a Userchoice" do
    visit userchoices_url
    click_on "New Userchoice"

    fill_in "Answerchoice", with: @userchoice.answerchoice_id
    fill_in "User", with: @userchoice.user_id
    click_on "Create Userchoice"

    assert_text "Userchoice was successfully created"
    click_on "Back"
  end

  test "updating a Userchoice" do
    visit userchoices_url
    click_on "Edit", match: :first

    fill_in "Answerchoice", with: @userchoice.answerchoice_id
    fill_in "User", with: @userchoice.user_id
    click_on "Update Userchoice"

    assert_text "Userchoice was successfully updated"
    click_on "Back"
  end

  test "destroying a Userchoice" do
    visit userchoices_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Userchoice was successfully destroyed"
  end
end
