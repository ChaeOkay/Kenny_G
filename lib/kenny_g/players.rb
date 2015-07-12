module Players
  def self.collection(players)
    players.map { |player| Player.new(player) }
  end

  class Player < Struct.new(:name, :score)
    def initialize(name, score = 0)
      super
    end
  end
end
