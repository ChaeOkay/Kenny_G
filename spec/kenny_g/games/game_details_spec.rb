require 'spec_helper'

describe 'GameDetailsModule' do
  context 'when included' do
    subject(:game_details) { SomeGame.new.details }

    describe '#details' do
      specify 'players' do
        expect(subject[:players]).to eq ['a']
      end

      specify 'status' do
        expect(subject[:status]).to eq :fancy
      end

      specify 'shared_target' do
        expect(subject[:shared_target]).to eq 1
      end
    end
  end

  class SomeGame
    include GameDetails

    def players
      ['a']
    end

    def status
      :fancy
    end

    def shared_target
      1
    end
  end
end
