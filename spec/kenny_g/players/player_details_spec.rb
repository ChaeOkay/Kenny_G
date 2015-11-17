require 'spec_helper'
require 'kenny_g/players/player_details'

describe 'PlayerDetailsModule' do
  describe '#details' do
    let(:points) { [1,2,3] }
    let(:user) { 'Fox' }
    subject(:player_details) { SomePlayer.new(points: points, user: user).details }

    context 'user points' do
      subject(:player_details_points) { player_details[user.intern][:points] }
      it { is_expected.to eq points }
    end

    context 'user points total' do
      subject(:player_details_points_total) { player_details[user.intern][:points_total] }
      it { is_expected.to eq points.inject(&:+) }
    end
  end

  class SomePlayer
    include PlayerDetails

    def initialize(points:, user:)
      @points = points
      @user = user
    end

    private
    attr_reader :points, :target, :user

    def points_total
      points.inject(&:+)
    end
  end

end


