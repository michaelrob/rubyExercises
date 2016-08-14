require "test/unit"
require "pry"
require_relative "../flatten"

class TestSimpleNumber < Test::Unit::TestCase

  def setup
    flatten = Flatten_arrays.new
  end

  def should_combine_nested_arrays
    all = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    array = [1, 2, [3, 4], 5, [6, 7, [8, 9]]]

    assert_equal all, flatten.combine_nested_arrays(array)
  end
end
