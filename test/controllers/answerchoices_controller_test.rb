require 'test_helper'

class AnswerchoicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @answerchoice = answerchoices(:one)
  end

  test "should get index" do
    get answerchoices_url
    assert_response :success
  end

  test "should get new" do
    get new_answerchoice_url
    assert_response :success
  end

  test "should create answerchoice" do
    assert_difference('Answerchoice.count') do
      post answerchoices_url, params: { answerchoice: { content: @answerchoice.content, question_id: @answerchoice.question_id, tally: @answerchoice.tally } }
    end

    assert_redirected_to answerchoice_url(Answerchoice.last)
  end

  test "should show answerchoice" do
    get answerchoice_url(@answerchoice)
    assert_response :success
  end

  test "should get edit" do
    get edit_answerchoice_url(@answerchoice)
    assert_response :success
  end

  test "should update answerchoice" do
    patch answerchoice_url(@answerchoice), params: { answerchoice: { content: @answerchoice.content, question_id: @answerchoice.question_id, tally: @answerchoice.tally } }
    assert_redirected_to answerchoice_url(@answerchoice)
  end

  test "should destroy answerchoice" do
    assert_difference('Answerchoice.count', -1) do
      delete answerchoice_url(@answerchoice)
    end

    assert_redirected_to answerchoices_url
  end
end
