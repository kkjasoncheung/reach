require 'test_helper'

class ClubUpdatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @club_update = club_updates(:one)
  end

  test "should get index" do
    get club_updates_url
    assert_response :success
  end

  test "should get new" do
    get new_club_update_url
    assert_response :success
  end

  test "should create club_update" do
    assert_difference('ClubUpdate.count') do
      post club_updates_url, params: { club_update: { content: @club_update.content, title: @club_update.title } }
    end

    assert_redirected_to club_update_url(ClubUpdate.last)
  end

  test "should show club_update" do
    get club_update_url(@club_update)
    assert_response :success
  end

  test "should get edit" do
    get edit_club_update_url(@club_update)
    assert_response :success
  end

  test "should update club_update" do
    patch club_update_url(@club_update), params: { club_update: { content: @club_update.content, title: @club_update.title } }
    assert_redirected_to club_update_url(@club_update)
  end

  test "should destroy club_update" do
    assert_difference('ClubUpdate.count', -1) do
      delete club_update_url(@club_update)
    end

    assert_redirected_to club_updates_url
  end
end
