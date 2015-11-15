require_relative 'game'

class GamePlay < Game
  def initialize(game_setup:)
    @game_players = [game_setup.details[:players]].flatten
    @game_target = game_setup.details[:shared_target]
  end

  def score(user_points)
    player = find_player(user_points[:user])
    player.score(user_points[:points])
    player.details
  end

  private
  attr_reader :game_players, :game_target

  def find_player(user)
    players.select { |p| p == user }.first
  end

  def players
    game_players
  end

  def status
    :game_play
  end

  def shared_target
    game_target
  end
end
