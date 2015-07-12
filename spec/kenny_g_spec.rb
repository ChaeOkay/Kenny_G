require 'spec_helper'

describe KennyG do
  let(:players) { Players.collection(['shelly']) }
  let(:winning_score) { 100 }
  let(:expected_arguments) { { players: players, winning_score: winning_score } }
  let(:options)  { { winning_score: winning_score, players: ['shelly'] } }

  describe '.please_be_the_scorekeeper' do
    it 'creates a game' do
      expect(Game).to receive(:new).with(expected_arguments)
      described_class.please_be_the_scorekeeper(options)
    end
  end
end
