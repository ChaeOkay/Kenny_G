require_relative 'game_setup'
require_relative '../players/null_player'

class QuickGameSetup < GameSetup
  def initialize(players: [], shared_target: 0)
    super(shared_target: shared_target)
    @players_setup = players << NullPlayer.new if players.empty?
  end

  private

  def status
    :quick_game_setup
  end
end
