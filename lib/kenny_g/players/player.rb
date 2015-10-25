require_relative 'player_details'

class Player
  include PlayerDetails

  def self.convert_users(users)
    users.map { |user| new(user: user) }
  end

  def initialize(user:, starting_points: 0)
    @points = [starting_points]
    @user = user
  end

  private
  attr_reader :points, :user
end
