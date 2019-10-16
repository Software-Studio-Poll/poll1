require "application_system_test_case"

class AnswerchoicesTest < ApplicationSystemTestCase
  setup do
    @answerchoice = answerchoices(:one)
  end

  test "visiting the index" do
    visit answerchoices_url
    assert_selector "h1", text: "Answerchoices"
  end

  test "creating a Answerchoice" do
    visit answerchoices_url
    click_on "New Answerchoice"

    fill_in "Content", with: @answerchoice.content
    fill_in "Question", with: @answerchoice.question_id
    fill_in "Tally", with: @answerchoice.tally
    click_on "Create Answerchoice"

    assert_text "Answerchoice was successfully created"
    click_on "Back"
  end

  test "updating a Answerchoice" do
    visit answerchoices_url
    click_on "Edit", match: :first

    fill_in "Content", with: @answerchoice.content
    fill_in "Question", with: @answerchoice.question_id
    fill_in "Tally", with: @answerchoice.tally
    click_on "Update Answerchoice"

    assert_text "Answerchoice was successfully updated"
    click_on "Back"
  end

  test "destroying a Answerchoice" do
    visit answerchoices_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Answerchoice was successfully destroyed"
  end
end
