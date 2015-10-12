class Players
  def self.collection(players)
    players.map { |player| Player.new(player) }
  end
end
