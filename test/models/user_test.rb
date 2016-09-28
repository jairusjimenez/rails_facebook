require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "friend request status is 'pending'" do 
    assert users(:jairus).pending_friends.include?(users(:another))
  end

  test "friend request status is 'requested'" do 
    assert users(:another).requested_friends.include?(users(:jairus))
  end

  test "'accepted' status means friends" do 
    assert users(:jairus).friends.include?(users(:foobar))
    assert users(:foobar).friends.include?(users(:jairus))
  end

  test "friendship not empty" do 
    assert_not users(:jairus).friendships.nil?
  end
end
