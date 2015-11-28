require 'spec_helper'

describe GameSetup do
  subject(:game_setup) { described_class.new }

  describe '#details' do
    specify 'shared_target' do
      expect(subject.details[:shared_target]).to eq 0
    end
  end

  describe '#play_game' do
    it 'returns a game play' do
      expect(game_setup.play_game).to be_a GamePlay
    end
  end

  describe '#add_player' do
    it 'adds a player to the game setup' do
      expect{ game_setup.add_player(player_params: {user: 'meg'}) }.
        to change{game_setup.details[:players].size}.by 1
    end
  end
end
