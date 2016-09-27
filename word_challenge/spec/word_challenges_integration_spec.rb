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

  describe WordChallenge do
    it "outputs list of sequences and words" do

    end

    it "should not contain duplicate sequences" do

    end
  end

end
