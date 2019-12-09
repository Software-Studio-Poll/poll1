require 'test_helper'

class UserchoicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @userchoice = userchoices(:one)
  end

  test "should get index" do
    get userchoices_url
    assert_response :success
  end

  test "should get new" do
    get new_userchoice_url
    assert_response :success
  end

  test "should create userchoice" do
    assert_difference('Userchoice.count') do
      post userchoices_url, params: { userchoice: { answerchoice_id: @userchoice.answerchoice_id, user_id: @userchoice.user_id } }
    end

    assert_redirected_to userchoice_url(Userchoice.last)
  end

  test "should show userchoice" do
    get userchoice_url(@userchoice)
    assert_response :success
  end

  test "should get edit" do
    get edit_userchoice_url(@userchoice)
    assert_response :success
  end

  test "should update userchoice" do
    patch userchoice_url(@userchoice), params: { userchoice: { answerchoice_id: @userchoice.answerchoice_id, user_id: @userchoice.user_id } }
    assert_redirected_to userchoice_url(@userchoice)
  end

  test "should destroy userchoice" do
    assert_difference('Userchoice.count', -1) do
      delete userchoice_url(@userchoice)
    end

    assert_redirected_to userchoices_url
  end
end
