require 'kenny_g/game_setup'
require 'kenny_g/player'

module KennyG
  def self.please_be_the_scorekeeper(options)
    player_names = options[:player_names] ||= []
    names_collection = Array[player_names].flatten

    winning_score = options[:winning_score] ||= 0
    raise Errors::WinningScoreError if winning_score < 0
    raise Errors::NoPlayerNames if names_collection.empty?

    players = names_collection.map { |name| Player.new(name: name) }
    GameSetup.new(winning_score: options.fetch(:winning_score), players: players)
  end
end
