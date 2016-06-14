require 'spec_helper'

describe KennyG do
  describe '.setup_game' do
    it 'returns a game setup' do
      expect(KennyG.setup_game).to be_a(GameSetup)
    end
  end

  describe '.play_game' do
    it 'returns a game play' do
      expect(KennyG.play_game).to be_a(GamePlay)
    end
  end
end
