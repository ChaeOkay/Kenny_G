class Player
  def initialize(name:, score: 0)
    @name = name
    @score = score
  end

  def summary
    instance_variables.each_with_object({}) do |variable, summary|
      summary[symbolize_ivar(variable)] = instance_variable_get(variable)
    end
  end

  private

  def symbolize_ivar(variable)
    variable.to_s.delete("@").to_sym
  end
end
