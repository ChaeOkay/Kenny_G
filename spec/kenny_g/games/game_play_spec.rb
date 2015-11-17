require 'spec_helper'
require 'kenny_g/games/game_play'

describe GamePlay do
  let(:user) { 'hi' }
  let(:player) { Player.new(user: user) }
  let(:details) { { players: [player], shared_target: 200 } }
  let(:game_setup) { double('GameSetup', details: details) }
  subject(:game_play) { described_class.new(game_setup: game_setup) }

  describe '#details' do
    specify 'shared_target' do
      expect(subject.details[:shared_target]).to eq 200
    end
  end

  describe '#score' do
    it 'records a player score' do
      game_play.score({ user: player, points: 3 })
      expect(player.details[user.intern][:points_total]).to eq 3
    end
  end
end
