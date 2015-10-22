require 'spec_helper'

describe Game do
  let(:player) { Player.new(name: 'beatrix') }
  let(:player1) { Player.new(name: 'sally', score: 50) }
  subject(:game) { described_class.new(players: [player, player1], winning_score: 100) }

  specify '#standings' do
    expect(game.standings).to eq([player.summary, player1.summary])
  end

  describe '#add_player' do
    it 'adds a player to the standings' do
      expect{ game.add_player({ name: 'lilly' }) }
        .to change{ game.standings.size }.by 1
    end
  end
end
