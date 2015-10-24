require_relative 'game'

class GameSetup < Game
  def initialize(players: [], winning_score: 0)
    @players_setup = players
    @winning_score_setup = winning_score
  end

  def play_game
    GamePlay.new(game_setup: self)
  end

  private
  attr_reader :players_setup, :winning_score_setup

  def players
    players_setup
  end

  def status
    :game_setup
  end

  def winning_score
    winning_score_setup
  end
end
