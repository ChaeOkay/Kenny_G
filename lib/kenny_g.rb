require 'kenny_g/game'
require 'kenny_g/players'
require 'kenny_g/sanitized_options'

class KennyG
  attr_accessor :game_started
  attr_reader :game
  private :game

  def self.please_be_the_scorekeeper(options)
    sanitized_options = SanitizedOptions.new(options)
    players = Players.collection(sanitized_options.players)
    game = Game.new(players: players, winning_score: sanitized_options.winning_score)
    new(game: game)
  end

  def initialize(game:)
    @game = game
    @game_started = false
  end

  def add_player(name)
    raise Errors::AddPlayers if game_started
    game.add_player(name)
  end

  def players
    game.players_summary
  end
end
