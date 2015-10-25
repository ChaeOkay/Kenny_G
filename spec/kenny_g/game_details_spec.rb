require 'spec_helper'

describe 'GameDetailsModule' do

  class SomeGame
    include GameDetails

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

  describe '#details' do
    it 'raises a NameError without method implementations' do
      expect{game.details}.to raise_error NameError
    end

    context 'with valid implementation' do
      let(:expected_values) { { players: ['a'], status: :fancy, winning_score: 1 } }
      let(:some_game) { SomeGame.new }

      it 'provides player, status, and winning_score information' do
        expect(some_game.details).to eq expected_values
      end
    end
  end
end
