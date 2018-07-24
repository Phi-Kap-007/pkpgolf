require 'test_helper'

class LeaderboardsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get leaderboards_show_url
    assert_response :success
  end

  test "should get paginate" do
    get leaderboards_paginate_url
    assert_response :success
  end

  test "should get entry_service" do
    get leaderboards_entry_service_url
    assert_response :success
  end

end
