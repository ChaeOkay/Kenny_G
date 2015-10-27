require_relative 'game'
require_relative 'game_play'
require_relative '../players/player'

class GameSetup < Game
  def initialize(game_factory: GamePlay,
                 players: [],
                 player_factory: Player,
                 winning_score: 0)

    @game_factory = game_factory
    @player_facotory = player_factory
    @players_setup = player_factory.convert_users(players)
    @winning_score_setup = winning_score
  end

  def play_game
    game_factory.new(game_setup: self)
  end

  private
  attr_reader :game_factory,
              :players_setup,
              :winning_score_setup

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
