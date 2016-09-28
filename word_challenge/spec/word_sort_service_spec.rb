require 'spec_helper'
require 'user_service'

RSpec.describe WordSortService do

  let!(:sort_service) { WordSortService.new }
  let(:word) { "carrots" }
  let(:expected_result) { ["carr", "arro", "rrot", "rots"] }

  describe 'find_sequences' do
    it 'should return sequences found in word' do

    end
  end
end
