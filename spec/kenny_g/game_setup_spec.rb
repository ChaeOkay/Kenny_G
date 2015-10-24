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
end
