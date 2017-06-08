require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test '#display_name when admin' do
    user = User.new(admin: true, name: 'Bob')

    assert_equal 'Bob (admin)', user.display_name
  end

  test '#display_name when not admin' do
    user = User.new(admin: false, name: 'Bob')

    assert_equal 'Bob', user.display_name
  end
end
