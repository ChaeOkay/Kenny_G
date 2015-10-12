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

 # def add_player(name)
 #   player = Players::Player.new(name)
 #   players << player
 #   player.summary
 # end

 # def players_summary
 #   players.map { |player| player.summary }
 # end
end
