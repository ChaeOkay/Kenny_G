require 'kenny_g/scorekeeper'

module KennyG
  def self.please_be_the_scorekeeper(options)
    Scorekeeper.new(options)
  end
end
