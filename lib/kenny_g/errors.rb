module Errors
  class NoPlayerName < StandardError
    def message
      'at least one player name must be provided'
    end
  end

  class InvalidWinningScore < StandardError
    def message
      'winning score must be > 0'
    end
  end

  class AddPlayers < StandardError
    def message
      'game started, players cannot be added'
    end
  end
end
