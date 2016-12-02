require 'spec_helper'
require 'is_prime'

describe Flatten_Arrays do
  it 'should return true for prime number' do
    number = 11

    expect(Is_Prime(number)).to eq(true)
  end
end
