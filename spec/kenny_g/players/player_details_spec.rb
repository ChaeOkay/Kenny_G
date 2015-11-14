require 'spec_helper'
require 'kenny_g/players/player_details'

describe 'PlayerDetailsModule' do
  context 'when included' do
    subject(:player_details) { SomePlayer.new.details }

    describe '#details' do
      specify 'points' do
        expect(subject[:points]).to eq [1,2,3]
      end

      specify 'points_total' do
        expect(subject[:points_total]).to eq 6
      end

      specify 'user' do
        expect(subject[:user]).to eq 'Fox'
      end
    end
  end

  class SomePlayer
    include PlayerDetails

    def initialize
      @points = [1,2,3]
      @user = 'Fox'
    end

    private
    attr_reader :points, :target, :user

    def points_total
      points.inject(&:+)
    end
  end

end


