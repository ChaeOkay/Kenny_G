require 'spec_helper'

describe GameSetup do
  let(:options)  { { winning_score: 100, players: ['beatrix'] } }
  let(:game_setup) { described_class.new(options) }

  describe '#add_player' do
    it 'increments the player count' do
      expect{ game_setup.add_player(name: 'lilly') }
        .to change{ game_setup.players.size }.by 1
    end
  end
end
