require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
  test 'layout links' do
    get '/'
    assert_select 'title', 'Home | AcuCruncher'
    assert_select 'a[href=?]', '/', count: 2
    assert_select 'a[href=?]', '/users/new'
    get '/users/new'
    assert_select 'title', 'Signup | AcuCruncher'
  end
end
