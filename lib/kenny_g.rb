require 'kenny_g/game_play'
require 'kenny_g/game_setup'

module KennyG
  class << self
    def setup_game(game_params = {})
      GameSetup.new(game_params)
    end

    def start_game(game_params = {})
      setup = setup_game(game_params)
      setup.start_game
    end
  end
end
