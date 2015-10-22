class Game
  attr_reader :starting_score, :players, :winning_score
  private :starting_score, :players

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

  def player_factory
    KennyG::Player
  end
end
