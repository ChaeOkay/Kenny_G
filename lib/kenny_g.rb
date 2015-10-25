require 'kenny_g/quick_game_setup'
require 'kenny_g/game_setup'

module KennyG
  class << self
    def setup_game(game_params = {})
      GameSetup.new(game_params)
    end

    def play_game(game_params = {})
      QuickGameSetup.new(game_params).play_game
    end
  end
end
