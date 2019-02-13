require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "full_name returns the capitalized first name and last name" do
    user = User.new(first_name: "john", last_name: "lennon")
    assert_equal "John Lennon", user.full_name
  end

  test "#full_name should not crash if user first name is nil" do
    george = User.new(last_name: 'abitbol')
    assert_equal "Abitbol", george.full_name
  end
end
