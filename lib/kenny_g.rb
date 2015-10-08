require 'kenny_g/game'
require 'kenny_g/players'
require 'kenny_g/sanitized_options'


# This is a module with behavior of the game only
class KennyG
  attr_accessor :game_started
  attr_reader :game
  private :game

  def self.please_be_the_scorekeeper(options)
    sanitized_options = SanitizedOptions.new(options)


    #We need an object is really a pre-game object. It can add/remove players to the collection
    #and accept changes to the sanitized params until pre-game becomes a game
    players = Players.collection(sanitized_options.players)


    #When the player is ready to start the game, the PreGame becomes a Game object
    game = Game.new(players: players, winning_score: sanitized_options.winning_score)
    new(game: game)


    #We don't have to keep track of the game being started on not, because we will
    #know based on object. A pre-game can do certain things, and a game can do certain things.
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
