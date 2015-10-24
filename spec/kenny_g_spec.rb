require 'spec_helper'

describe KennyG do
  describe '.setup_game' do
    it 'returns a game setup' do
      expect(described_class.setup_game).to be_a(GameSetup)
    end
  end
end
