module PlayerDetails
  def details
    {
      user: user,
      points: points,
      points_total: points_total
    }
  end

  private

  def points_total
    points.inject(&:+)
  end
end
