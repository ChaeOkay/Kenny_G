require_relative 'game'

class GamePlay < Game
  def initialize(game_setup:)
    @game_players = [game_setup.details[:players]].flatten
    @game_winning_score = game_setup.details[:winning_score]
  end

  def score(user_points)
    player = find_player(user_points[:user])
    player.score(user_points[:points])
    player.details
  end

  private
  attr_reader :game_players, :game_winning_score

  def find_player(user)
    players.select { |p| p == user }.first
  end

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
