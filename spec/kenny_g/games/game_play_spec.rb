require 'spec_helper'
require 'kenny_g/games/game_play'

describe GamePlay do
  let(:user) { 'hi' }
  let(:players) { [Player.new(user: user)] }
  let(:shared_target) { 200 }
  subject(:game_play) { described_class.new(players: players,
                                            shared_target: shared_target) }

  describe '#details' do
    specify 'shared_target' do
      expect(subject.details[:shared_target]).to eq shared_target
    end
  end

  describe '#score' do
    it 'records a player score' do
      score_record = game_play.score({ user: user, points: 3 })
      expect(score_record[user.intern][:points_total]).to eq 3
    end
  end
end
