require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test 'user display_name admin' do
    user = User.new(admin:true,name:'Bob')
    assert_equal 'Bob (admin)', user.display_name
  end
  
  test 'user display_name not admin' do
    user = User.new(admin:false,name:'Bob')
    assert_equal 'Bob', user.display_name
  end
end
