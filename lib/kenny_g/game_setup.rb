class GameSetup
  def initialize(players: [], winning_score: 0)
    @players = players
    @status = :game_setup
    @winning_score = winning_score
  end

  def details
    instance_variables.each_with_object({}) do |variable, summary|
      summary[symbolize_ivar(variable)] = instance_variable_get(variable)
    end
   end

  def start_game
    Game.new(game_setup: self)
  end

   private

   def symbolize_ivar(variable)
     variable.to_s.delete("@").to_sym
   end
end
