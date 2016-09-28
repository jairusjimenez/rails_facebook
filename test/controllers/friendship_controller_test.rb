require 'test_helper'

class FriendshipControllerTest < ActionDispatch::IntegrationTest
	test "should get index" do
		get :index
		assert_response :success
	end

	test "should get update" do
		get :update
		assert_response :success
	end

	test "should get destroy" do
		get :destroy
		assert_response :success
	end
end
