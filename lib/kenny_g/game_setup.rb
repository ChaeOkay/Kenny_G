class GameSetup
  attr_reader :players, :winning_score

  def initialize(players:, winning_score:)
    @players = players
    @winning_score = winning_score
  end
end
