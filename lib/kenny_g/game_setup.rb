require 'kenny_g/player'
require 'kenny_g/errors'

class GameSetup
  attr_reader :starting_score, :players, :winning_score
  private :starting_score

  def initialize(players:, winning_score:)
    @winning_score = winning_score
    @players = players.to_a
    raise Errors::WinningScoreError if players.empty?
  end

  def add_player(name:)
    players << Player.new(name: name)
  end
end
