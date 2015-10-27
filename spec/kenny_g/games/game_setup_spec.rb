require 'spec_helper'

describe GameSetup do
  subject(:game_setup) { described_class.new }

  describe '#details' do
    it 'displays game setup players, winning_score, and status' do
      details = { players: [], winning_score: 0, status: :game_setup }
      expect(game_setup.details).to eq details
    end
  end

  describe '#play_game' do
    it 'returns a game play' do
      expect(game_setup.play_game).to be_a GamePlay
    end
  end

  describe '#add_player' do
    it 'adds a player to the game setup' do
      expect{ game_setup.add_player({user: 'meg'}) }.
        to change{game_setup.details[:players].size}.by 1
    end
  end
end
