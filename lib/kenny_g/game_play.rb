require_relative 'game'

class GamePlay < Game
  def initialize(game_setup:)
    @game_players = [game_setup.details[:players]].flatten
    @game_winning_score = game_setup.details[:winning_score]
  end

  private
  attr_reader :game_players, :game_winning_score

  def players
    game_players
  end

  def status
    :game_play
  end

  def winning_score
    game_winning_score
  end
end
