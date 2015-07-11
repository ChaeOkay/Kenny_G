require 'spec_helper'
require 'kenny_g'
require 'kenny_g/game_setup'

describe KennyG do
  let(:params)  { { winning_score: 100, players: ['shelly'] } }

  describe '.please_be_the_scorekeeper' do
    it 'call the game setup' do
      expect(GameSetup).to receive(:new).with(params)
      described_class.please_be_the_scorekeeper(params)
    end

    it 'raises error if no name is provided' do
      params = { winning_score: 100, players: nil }
      expect{ described_class.please_be_the_scorekeeper(params) }
        .to raise_error.with_message('at least one player name must be provided')
    end

    it 'raises error if name is an empty string' do
      params = { winning_score: 100, players: '' }
      expect{ described_class.please_be_the_scorekeeper(params) }
        .to raise_error.with_message('at least one player name must be provided')
    end

    it 'raises error if winning score is less than 0' do
      params = { winning_score: -1, players: 'emily' }
      expect{ described_class.please_be_the_scorekeeper(params) }
        .to raise_error.with_message('winning score must be > 0')
    end
  end
end
