require 'spec_helper'

describe Player do
  let(:player) { Players::Player.new('beatrix') }
  let(:options)  { { winning_score: 100, players: [player] } }
  let(:game_setup) { described_class.new(options) }

  describe '#add_player' do
    xit 'increments the player count' do
      expect{ game_setup.add_player('lilly') }
        .to change{ game_setup.players_summary.size }.by 1
    end
  end
end
