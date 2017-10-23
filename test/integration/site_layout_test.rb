require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
  test 'layout links' do
    get '/'
    assert_select 'a[href=?]', '/', count: 2
    assert_select 'a[href=?]', '/users/new'
  end
end
