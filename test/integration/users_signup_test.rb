require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest
  test 'invalid signup information' do
    get '/users/new'
    assert_no_difference 'User.count' do
      post '/users',
           params: { user: { email: '',
                             password: 'foo',
                             password_confirmation: 'bar' } }
    end
    assert_template 'users/new'
  end
end
