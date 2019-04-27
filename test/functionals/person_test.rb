require_relative '../test_helper'
require_relative '../../app'

class PersonTest < Minitest::Test 
    def app
        App
    end

    def test_get_home
        get '/'
        assert_equal 200, last_response.status
    end
end