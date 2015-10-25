class NullPlayer

  def initialize
    @points = [0]
    @user = 'Anon'
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
