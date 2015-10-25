require_relative 'player_details'

class NullPlayer
  include PlayerDetails

  def initialize
    @points = [0]
    @user = 'Anon'
  end

  private
  attr_reader :points, :user
end
