require 'kenny_g/game_setup'

module KennyG
  def self.please_be_the_scorekeeper(options)
    players = options[:players] ||= []
    names_collection = Array[players].flatten.reject(&:empty?)
    raise 'at least one player name must be provided' if names_collection.empty?

    winning_score = options.fetch(:winning_score, 0)
    raise 'winning score must be > 0' if winning_score < 0

    GameSetup.new(players: names_collection, winning_score: winning_score)
  end
end
