require 'spec_helper'
require 'flatten'

describe Flatten_Arrays do
  it 'should combine nested arrays' do
    numbers = [1,2,[3,4,5],6,7,8,9]

    expect(Flatten_Arrays.call(numbers)).to eq([1,2,3,4,5,6,7,8,9])
  end

  it 'should combine multiple nested arrays' do
    numbers = [1,2,[3,4,5],[6,7,8],9]

    expect(Flatten_Arrays.call(numbers)).to eq([1,2,3,4,5,6,7,8,9])
  end

  it 'should combine nested arrays with nested arrays' do
    numbers = [1,2,[3,[4,5]],6,7,8,9]

    expect(Flatten_Arrays.call(numbers)).to eq([1,2,3,4,5,6,7,8,9])
  end

  it 'should combine multiple nested arrays with multplie nested arrays' do
    numbers = [1,2,[3,[4,5]],[6,[7,[8,9]]]]

    expect(Flatten_Arrays.call(numbers)).to eq([1,2,3,4,5,6,7,8,9])
  end

  it 'should combine nested arrays with multiple data types' do
    numbers = [1,"two",[3,4,5],6,[7,8.2,9]]

    expect(Flatten_Arrays.call(numbers)).to eq([1,"two",3,4,5,6,7,8.2,9])
  end
end
