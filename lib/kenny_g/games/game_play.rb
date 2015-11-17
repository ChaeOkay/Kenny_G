require_relative 'game'

class GamePlay < Game
  def initialize(players:, shared_target:)
    @game_players = players
    @game_target = shared_target
  end

  def score(user_points)
    player = find_player(user_points[:user])
    player.score(user_points[:points])
    player.details
  end

  private
  attr_reader :game_players, :game_target

  def find_player(user)
    game_players.find { |player| player.user.to_s == user.to_s }
  end

  def players
    Hash[player_list]
  end

  def status
    :game_play
  end

  def shared_target
    game_target
  end

  def player_list
    game_players.map { |player| player.details.flatten }
  end
end
