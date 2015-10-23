require 'spec_helper'

describe KennyG do
  describe '.please_be_the_scorekeeper' do
    it 'returns a game setup given no params' do
      kenny_g = described_class.please_be_the_scorekeeper
      expect(kenny_g.players).to eq []
      expect(kenny_g.winning_score).to eq 0
    end

    it 'returns a game setup given a winning score and players' do
      params = { players: ['shelly'], winning_score: 100 }
      kenny_g = described_class.please_be_the_scorekeeper(params)
      expect(kenny_g.players).to eq ['shelly']
      expect(kenny_g.winning_score).to eq 100
    end
  end
end
