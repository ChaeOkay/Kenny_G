require 'kenny_g/game_setup'

module KennyG
  def self.please_be_the_scorekeeper(game_params)
    GameSetup.new(game_params)
  end
end
