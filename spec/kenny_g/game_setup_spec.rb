require 'spec_helper'

describe GameSetup do
  subject(:game_setup) { described_class.new }

  describe '#start_game' do
    it 'returns a game play' do
      expect(game_setup.start_game).to be_a GamePlay
    end
  end
end
