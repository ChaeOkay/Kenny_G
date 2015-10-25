class Player
  def initialize(user:, starting_points: 0)
    @points = [starting_points]
    @user = user
  end

  def details
    {
      user: user,
      points: points,
      points_total: points_total
    }
  end

  private
  attr_reader :points, :user

  def points_total
    points.inject(&:+)
  end

end
