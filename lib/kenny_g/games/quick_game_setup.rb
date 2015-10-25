require_relative 'game_setup'
require_relative '../players/null_player'

class QuickGameSetup < GameSetup
  def initialize(players: [], winning_score: 0)
    super(winning_score: winning_score)
    @players_setup = players << NullPlayer.new if players.empty?
  end

  private

  def status
    :quick_game_setup
  end
end
