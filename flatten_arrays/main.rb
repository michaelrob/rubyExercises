require 'pry'
require_relative 'flatten'

flatten = Flatten_Arrays.new()

numbers = [10, 11, 5, [3, 8, 1, [12, 7, 18], 30, 10]]
flatten.flatten_nested_arrays(numbers)
