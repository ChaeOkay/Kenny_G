module Errors
  class WinningScoreError < StandardError
    def message
      "Winning score must be > 0"
    end
  end

  class NoPlayerNames < StandardError
    def message
      "At least one player name must be provided"
    end
  end
end
