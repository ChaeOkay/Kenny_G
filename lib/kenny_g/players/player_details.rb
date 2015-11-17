module PlayerDetails
  def details
    { user.intern => {
        points: points,
        points_total: points_total
      }
    }
  end

  private

  def points_total
    points.inject(&:+)
  end
end
