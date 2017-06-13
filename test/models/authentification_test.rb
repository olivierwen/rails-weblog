require 'application_system_test_case'

class AuthentificationTest < ApplicationSystemTestCase
    test 'auth test' do
        visit '/'
        click_on 'Sign Up'
        fill_in 'Name', with: 'John'
        fill_in 'Email', with: 'test@test.net'
        fill_in 'Password', with: 'supersecret'
        click_button  'Sign Up'
        
        assert_selector '.flash.notice', 'Thank you for signing up!'
        
        click_on 'Log In'
        
        fill_in 'Email', with: 'test@test.net'
        fill_in 'Password', with: 'supersecret'
        
        click_button 'Log In'
        
        assert_selector 'header', 'Hello John Doe'
        assert_selector 'a', 'Log Out'
    end
end