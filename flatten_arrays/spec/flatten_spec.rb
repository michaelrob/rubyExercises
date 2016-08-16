require 'rspec'
require 'spec_helper'
require_relative '../flatten'

describe '#flatten_nested_arrays' do
  before do
    @flatten = Flatten_Arrays.new()
  end

  it 'should combine nested arrays' do
    numbers = [1,2,[3,4,5],6,[7,[8,9]]]
    flatten_array = @flatten.flatten_nested_arrays(numbers)

    expect(flatten_array).to eq([1,2,3,4,5,6,7,8,9])
  end
end
