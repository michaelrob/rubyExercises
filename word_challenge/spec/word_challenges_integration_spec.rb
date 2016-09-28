require 'spec_helper'
require 'word_challenge'

describe "integration" do

  let(:dictionary) {
    """arrows
carrots
give
me"""
  }

  let(:result) { WordChallenge.call(dictionary) }
  let(:expected_result) { [["arrow", "rrow"], ["arrow", "rows"], ["carrots", "carr"], ["carrots", "rrot"], ["carrots", "rots"], ["give", "give"]] }

  describe WordChallenge do
    it 'outputs list of sequences and words' do
      expect(result).to eq(expected_result)
    end

    it 'should not contain duplicate sequences' do
      expect(result).not_to include("me")
    end

    it 'should contain sequence for each word' do
      expect(expected_result.length).to be(6)
    end

    it 'words output file should exist' do

    end

    it 'sequences output file should exist' do

    end
  end
end
