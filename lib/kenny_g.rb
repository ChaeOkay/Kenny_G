require 'kenny_g/game_setup'
require 'kenny_g/sanitized_options'

module KennyG
  def self.please_be_the_scorekeeper(options)
    sanitized_options = SanitizedOptions.new(options)
    GameSetup.new(players: sanitized_options.players,
                  winning_score: sanitized_options.winning_score)
  end
end
