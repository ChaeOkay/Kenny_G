require_relative 'game'
require_relative 'game_play'
require_relative '../players/player'

class GameSetup < Game
  def initialize(game_factory: GamePlay,
                 players: [],
                 player_factory: Player,
                 shared_target: 0)

    @game_factory = game_factory
    @player_factory = player_factory
    @players_setup = player_factory.convert_users(players)
    @target_setup = shared_target
  end

  def play_game
    game_factory.new(game_setup: self)
  end
  alias_method :start_game, :play_game

  def add_player(player_params)
    @players_setup << player_factory.new(player_params)
  end

  private
  attr_reader :game_factory,
              :player_factory,
              :players_setup,
              :target_setup

  def players
    players_setup
  end

  def status
    :game_setup
  end

  def shared_target
    target_setup
  end
end
