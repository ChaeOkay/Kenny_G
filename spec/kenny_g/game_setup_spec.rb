require 'spec_helper'

describe GameSetup do
  subject(:game_setup) { described_class.new }

  describe '#details' do
    it 'displays game setup players, winning_score, and status' do
      details = { players: [], winning_score: 0, status: :game_setup }
      expect(game_setup.details).to eq details
    end
  end

  describe '#start_game' do
    it 'returns a game play' do
      expect(game_setup.start_game).to be_a GamePlay
    end
  end
end
