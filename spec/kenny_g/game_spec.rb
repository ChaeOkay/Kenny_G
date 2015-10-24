require 'spec_helper'

describe Game do
  subject(:game) { described_class.new }

  describe '#details' do
    it 'raises a NameError without method implementations' do
      expect{game.details}.to raise_error NameError
    end

    context 'with valid implementation' do
      let(:expected_values) { { players: ['a'], status: :fancy, winning_score: 1 } }
      let(:game_child) { GameChild.new }

      it 'provides player, status, and winning_score information' do
        expect(game_child.details).to eq expected_values
      end
    end
  end
end

class GameChild < Game
  def players
    ['a']
  end

  def status
    :fancy
  end

  def winning_score
    1
  end
end

