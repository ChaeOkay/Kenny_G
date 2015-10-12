require 'spec_helper'

describe Game do
  let(:player) { Player.new(name: 'beatrix') }
  let(:player1) { Player.new(name: 'sally', score: 50) }
  subject(:game) { described_class.new(players: [player, player1], winning_score: 100) }

  specify 'standings' do
    expect(game.standings).to eq([player.summary, player1.summary])
  end

  describe '#add_player' do
    xit 'increments the player count' do
      expect{ game.add_player('lilly') }
        .to change{ game.players_summary.size }.by 1
    end
  end
end
