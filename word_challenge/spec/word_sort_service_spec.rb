require 'spec_helper'
require 'word_sort_service'

RSpec.describe WordSortService do

  let!(:sort_service) { WordSortService.new }
  let(:word) { "carrots" }
  let(:expected_result) { ["carr", "arro", "rrot", "rots"] }

  describe 'find_sequences' do
    let!(:results) { sort_service.find_sequences(word) }

    it 'should return sequences found in word' do
      results.each do |result|
        expect(word).to include(result)
      end
    end

    it 'should not contain sequences less than 4 letters long' do
      results.each do |result|
        expect(result.length).to be(4)
      end
    end
  end

  describe 'find_duplicates' do
    let(:sorted) { [["carrots", "carr"], ["carrots", "arro"], ["give", "give"]] }

    it 'should return nothing if no duplicate found' do
      results = sort_service.find_duplicates(word, "rots", sorted)
      expect(results).to be(nil)
    end

    it 'should return sorted de-duped if duplicate found' do
      deduped_sorted = [["carrots", "carr"], ["give", "give"]]
      results = sort_service.find_duplicates(word, "arro", sorted)
      expect(results).to eq(deduped_sorted)
    end
  end
end
