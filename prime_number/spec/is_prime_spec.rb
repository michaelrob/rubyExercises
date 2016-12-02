require 'spec_helper'
require 'is_prime'

describe Is_Prime do
  it 'should return true for prime number' do
    number = 11

    expect(Is_Prime.call(number)).to eq(true)
  end
end
