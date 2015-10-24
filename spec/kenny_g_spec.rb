require 'spec_helper'

describe KennyG do
  describe '.please_be_the_scorekeeper' do
    it 'returns a game setup' do
      expect(described_class.please_be_the_scorekeeper).to be_a(GameSetup)
    end
  end
end
