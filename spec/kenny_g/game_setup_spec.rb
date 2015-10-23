require 'spec_helper'

describe GameSetup do
  describe '#initialize' do
    it 'has optional params' do
      expect(described_class.new).to be_a(GameSetup)
    end

    it 'accepts players and or a winning score' do
      params = { players: ['jennay', 'mad max'], winning_score: 10 }
      expect(described_class.new(params)).to be_a(GameSetup)
    end
  end
end
