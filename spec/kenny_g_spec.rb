require 'spec_helper'
require 'kenny_g'
require 'kenny_g/scorekeeper'

describe KennyG do
  describe '.please_be_the_scorekeeper' do
    let(:params)  { { winning_score: 100 } }
    let(:kenny_g) { KennyG::please_be_the_scorekeeper(params) }
    it 'sets the winning score with valid params' do
      expect(kenny_g.winning_score).to eq 100
    end
  end
end
