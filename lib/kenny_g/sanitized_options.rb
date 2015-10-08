require 'kenny_g/errors'

class SanitizedOptions
  attr_reader :players, :winning_score

  def initialize(options)
    @players = (options[:players] ||= []); sanitize_players
    @winning_score = (options[:winning_score] ||= 0); sanitize_winning_score
  end

  def instance_values
    Hash[instance_variables.map { |name| [name[1..-1].to_sym, instance_variable_get(name)] }]
  end

  private

  def sanitize_players
    names_collection = Array[players].flatten.reject(&:empty?)
    raise Errors::NoPlayerName if names_collection.empty?
  end

  def sanitize_winning_score
    raise Errors::InvalidWinningScore if winning_score < 0
  end
end
