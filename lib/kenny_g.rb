require 'kenny_g/game'
require 'kenny_g/game_setup'

module KennyG
  def self.setup_game(game_params = {})
    GameSetup.new(game_params)
  end
end
