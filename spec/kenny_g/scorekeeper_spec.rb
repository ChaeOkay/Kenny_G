require 'spec_helper'
require 'kenny_g'
require 'kenny_g/scorekeeper'

describe Scorekeeper do
  let(:scorekeeper) { described_class.new(winning_score: 1) }

  describe '#add_player' do
    let(:player_params) { { name: 'Esme' } }
    let(:expected_players) { [Scorekeeper::Player.new(player_params)] }

    it 'returns a collection of players' do
      expect(scorekeeper.add_player(player_params))
        .to eq expected_players
    end
  end

  describe '#players' do
    let(:player_params) { { name: 'Esme' } }
    let(:expected_players) { [Scorekeeper::Player.new(player_params)] }

    it 'returns a collection of players' do
      scorekeeper.add_player(player_params)
      expect(scorekeeper.players).to eq expected_players
    end
  end
end
