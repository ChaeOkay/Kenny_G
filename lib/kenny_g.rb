require 'kenny_g/game_setup'

module KennyG
  def self.please_be_the_scorekeeper(options)
    players = options[:players] ||= []
    names_collection = Array[players].flatten.reject(&:empty?)
    raise 'at least one player name must be provided' if names_collection.empty?

    GameSetup.new(players: names_collection, winning_score: options.fetch(:winning_score))
  end
end
