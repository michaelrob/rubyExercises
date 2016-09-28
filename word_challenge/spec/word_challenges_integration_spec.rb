require 'spec_helper'
require 'word_challenge'

describe "integration" do

  let(:dictionary) {
    """
      arrows
      carrots
      give
      me
    """
  }

  let(:result) { WordChallenge.call(dictionary) }
  let(:expected_result) { [["arrow", "rrow"], ["arrow", "rows"], ["carrots", "carr"], ["carrots", "rrot"], ["carrots", "rots"], ["give", "give"]] }

  describe WordChallenge do
    it 'outputs list of sequences and words' do
      expect(result).to eq()
    end

    it 'should not contain duplicate sequences' do
      expect(results).not_to include("me")
    end

    it 'should contain sequence for each word' do
      expect(expected_result.length).to be(6)
    end
  end

end
