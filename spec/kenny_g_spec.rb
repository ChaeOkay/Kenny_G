require 'spec_helper'
require 'kenny_g'
require 'kenny_g/game_setup'

describe KennyG do
  let(:players) { Players.collection(['shelly']) }
  let(:winning_score) { 100 }
  let(:expected_arguments) { { players: players, winning_score: winning_score } }
  let(:options)  { { winning_score: winning_score, players: ['shelly'] } }

  describe '.please_be_the_scorekeeper' do
    it 'calls the game setup' do
      expect(GameSetup).to receive(:new).with(expected_arguments)
      described_class.please_be_the_scorekeeper(options)
    end
  end
end
