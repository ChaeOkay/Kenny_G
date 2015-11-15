require 'spec_helper'

describe QuickGameSetup do
  let(:null_player) { 'no_player' }
  before { allow(NullPlayer).to receive(:new) { null_player } }
  subject(:quick_game_setup) { described_class.new }

  describe '#details' do
    specify 'players' do
      expect(subject.details[:players]).to eq [null_player]
    end

    specify 'status' do
      expect(subject.details[:status]).to eq :quick_game_setup
    end

    specify 'shared_target' do
      expect(subject.details[:shared_target]).to eq 0
    end
  end

  describe '#play_game' do
    it 'returns a game play' do
      expect(quick_game_setup.play_game).to be_a GamePlay
    end
  end
end
