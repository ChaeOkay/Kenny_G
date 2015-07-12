require 'kenny_g/game'
require 'kenny_g/players'
require 'kenny_g/sanitized_options'

module KennyG
  def self.please_be_the_scorekeeper(options)
    sanitized_options = SanitizedOptions.new(options)
    players = Players.collection(sanitized_options.players)
    Game.new(players: players, winning_score: sanitized_options.winning_score)
  end
end
