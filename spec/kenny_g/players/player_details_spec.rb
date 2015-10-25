require 'spec_helper'
require 'kenny_g/players/player_details'

describe 'PlayerDetailsModule' do
  class SomePlayer
    include PlayerDetails

    def initialize
      @points = [1,2,3]
      @user = 'Fox'
    end

    private
    attr_reader :points, :user

    def points_total
      points.inject(&:+)
    end
  end

  let(:expected_values) { { user: 'Fox', points: [1,2,3], points_total: 6 } }
  let(:some_player) { SomePlayer.new }

  describe '#details' do
    it 'provides the user name, points history, and points total' do
      expect(some_player.details).to eq(expected_values)
    end
  end
end


