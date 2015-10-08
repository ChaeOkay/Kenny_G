#The player class can live outside of the players collection with
#the idea of a pre-game and game object

module Players
  def self.collection(players)
    players.map { |player| Player.new(player) }
  end

  class Player < Struct.new(:name, :score)
    def initialize(name, score = 0)
      super
    end

    def summary
      self.to_h
    end
  end
end
