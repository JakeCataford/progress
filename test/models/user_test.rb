require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "valid user should save" do
    assert_difference 'User.all.count', 1, "User should have been saved." do
      user = User.create({
        name: "Don Jones",
        email: "Test@example.com"
      })

      user.save
    end
  end

  test "should not save invalid email" do
    assert_no_difference 'User.all.count', "User should not have been saved for invalid email." do
      user = User.create({
        name: "Yellis",
        email: "BAD"
      })
      user.save
    end
  end

  test "should not save user with no name" do
    assert_no_difference 'User.all.count', "User should not have been saved for no name" do
      user = User.create({
        email: "jake@jake.com"
      })
      user.save
    end
  end
end
