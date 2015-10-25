require 'spec_helper'
require 'kenny_g/games/game_play'

describe GamePlay do
  let(:details) { { players: ['hi'], winning_score: 200 } }
  let(:game_setup) { double('GameSetup', details: details) }
  subject(:game_play) { described_class.new(game_setup: game_setup) }

  describe '#details' do
    it 'displays game play players, winning_score, and status' do
      expected_details = details.merge(status: :game_play)
      expect(game_play.details).to eq expected_details
    end
  end
end
