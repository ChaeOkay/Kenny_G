require 'spec_helper'

describe GameSetup do
  let(:players) { ['shelly'] }
  let(:winning_score) { 100 }
  let(:params) { { players: players, winning_score: winning_score } }
  subject(:game_setup) { described_class.new(params) }

  describe '#initialize' do
    it { is_expected.to be_a(GameSetup) }
    it 'can be instantiated without params' do
      expect(described_class.new).to be_a(GameSetup)
    end
  end

  describe '#details' do
    specify 'players' do
      expect(game_setup.details[:players]).to eq players
    end

    specify 'status' do
      expect(game_setup.details[:status]).to eq :game_setup
    end

    specify 'winning_score' do
      expect(game_setup.details[:winning_score]).to eq winning_score
    end
  end

  describe '#start_game' do
    it 'returns a game' do
      expect(game_setup.start_game).to be_a Game
    end
  end
end
