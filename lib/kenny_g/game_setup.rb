class GameSetup
  attr_reader :players, :winning_score

  def initialize(players: [], winning_score: 0)
    @players = players
    @winning_score = winning_score
  end
end
