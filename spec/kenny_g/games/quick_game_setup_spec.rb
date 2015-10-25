require 'spec_helper'

describe QuickGameSetup do
  let(:null_player) { 'no_player' }
  before { allow(NullPlayer).to receive(:new) { null_player } }

  subject(:quick_game_setup) { described_class.new }

  describe '#details' do
    it 'displays game setup players, winning_score, and status' do
      details = { players: [null_player], winning_score: 0, status: :quick_game_setup }
      expect(quick_game_setup.details).to eq details
    end
  end

  describe '#play_game' do
    it 'returns a game play' do
      expect(quick_game_setup.play_game).to be_a GamePlay
    end
  end
end
