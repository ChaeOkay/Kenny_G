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

  context 'after instantiation' do
    let(:params) { { players: ['alice'], winning_score: 30 } }
    subject(:new_game) { described_class.new(params) }

    specify '#summary' do
      expect(new_game.summary).to eq params
    end
  end
end
