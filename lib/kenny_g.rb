require 'kenny_g/game_setup'
require 'kenny_g/errors'

module KennyG
  def self.please_be_the_scorekeeper(options)
    players = options[:players] ||= []
    names_collection = Array[players].flatten.reject(&:empty?)
    raise Errors::NoPlayerName if names_collection.empty?

    winning_score = options.fetch(:winning_score, 0)
    raise Errors::InvalidWinningScore if winning_score < 0

    GameSetup.new(players: names_collection, winning_score: winning_score)
  end
end
