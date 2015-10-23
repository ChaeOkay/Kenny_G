require 'spec_helper'

describe KennyG do
  describe '.please_be_the_scorekeeper' do
    it 'returns a game setup given no params' do
      game_setup = described_class.please_be_the_scorekeeper
      expect(game_setup.players).to eq []
      expect(game_setup.winning_score).to eq 0
    end

    it 'returns a game setup given a winning score and players' do
      params = { players: ['shelly'], winning_score: 100 }
      game_setup = described_class.please_be_the_scorekeeper(params)
      expect(game_setup.players).to eq ['shelly']
      expect(game_setup.winning_score).to eq 100
    end
  end
end
