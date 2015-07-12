require 'kenny_g/player'

class GameSetup
  attr_reader :starting_score, :players, :winning_score
  private :starting_score

  def initialize(players:, winning_score:)
    @winning_score = winning_score
    @players = players
  end

  def add_player(name:)
    players << Players::Player.new(name: name)
  end
end
