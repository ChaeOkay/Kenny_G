require 'spec_helper'
require 'kenny_g'
require 'kenny_g/game_setup'

describe KennyG do
  let(:players) { ['shelly'] }
  let(:winning_score) { 100 }
  let(:sanitized_options) { double('SanitizedOptions', player: players,
                                    winning_score: winning_score) }
  let(:options)  { { winning_score: winning_score, players: players} }

  describe '.please_be_the_scorekeeper' do
    it 'calls the game setup' do
      expect(GameSetup).to receive(:new).with(options)
      described_class.please_be_the_scorekeeper(options)
    end
  end
end
