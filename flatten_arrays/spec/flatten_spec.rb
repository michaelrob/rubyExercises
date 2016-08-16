require 'rspec'
require 'spec_helper'
require_relative '../flatten'

describe '#flatten_nested_arrays' do
  before do
    @flatten = Flatten_Arrays.new()
  end

  it 'should combine nested arrays' do
    numbers = [1,2,[3,4,5],6,[7,8,9]]

    expect(@flatten.flatten_nested_arrays(numbers)).to eq([1,2,3,4,5,6,7,8,9])
  end

  it 'should combine nested arrays with nested arrays' do
    numbers = [1,2,[3,[4,5]],[6,[7,8,9]]]

    expect(@flatten.flatten_nested_arrays(numbers)).to eq([1,2,3,4,5,6,7,8,9])
  end

  it 'should combine nested arrays with multiple data types' do
    numbers = [1,"two",[3,4,5],6,[7,8.2,9]]

    expect(@flatten.flatten_nested_arrays(numbers)).to eq([1,"two",3,4,5,6,7,8.2,9])
  end
end
