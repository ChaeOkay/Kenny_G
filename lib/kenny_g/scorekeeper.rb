class Scorekeeper
  attr_reader :winning_score

  def initialize(winning_score: 1)
    @winning_score = winning_score
  end
end
