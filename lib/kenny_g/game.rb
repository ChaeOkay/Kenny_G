class Game
  attr_reader :winning_score

  def initialize(players: [], winning_score:)
    @winning_score = winning_score
    @players = players
  end

  def standings
    players.map { |player| player.summary }
  end

  def add_player(player_params)
    players << player_factory.new(player_params)
  end

  private
  attr_reader :starting_score, :players

  def player_factory
    KennyG::Player
  end
end
