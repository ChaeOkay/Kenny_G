require 'kenny_g/games/quick_game_setup'
require 'kenny_g/games/game_setup'

module KennyG
  class << self
    def setup_game(game_params = {})
      game_setup_params = {}
      game_setup_params[:players] = Player.convert_users(game_params[:players] || {})
      GameSetup.new(game_setup_params)
    end

    def play_game(game_params = {})
      QuickGameSetup.new(game_params).play_game
    end
    alias_method :start_game, :play_game

    def details
      "Nothing to report yet! Kick things off by running `KennyG.game_setup` or `KennyG.play_game`."
    end
  end
end
