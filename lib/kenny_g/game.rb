class Game
  attr_reader :starting_score, :players, :winning_score
  private :starting_score

  def initialize(players:, winning_score:)
    @winning_score = winning_score
    @players = players
  end

  def add_player(name)
    player = Players::Player.new(name)
    players << player
    player.to_h
  end

  def players_summary
    players.map { |player| player.to_h }
  end
end
