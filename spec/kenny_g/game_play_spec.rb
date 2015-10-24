require 'spec_helper'

describe GamePlay do
  subject(:game_play) { described_class.new }

  describe '#details' do
    it 'displays game play players, winning_score, and status' do
      details = { players: [], winning_score: 0, status: :game_play }
      expect(game_play.details).to eq details
    end
  end
end
