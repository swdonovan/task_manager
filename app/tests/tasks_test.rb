require 'minitest'
require 'minitest/autorun'
require_relative '../models/tasks'
require 'pry'

class TasksTest<Minitest::Test

  def test_what_find_returns
    params = {"id"=>"1"}
    a = Tasks.find(params['id'])
    expected = "as;lkj"

    assert_equal expected, a
  end

end
