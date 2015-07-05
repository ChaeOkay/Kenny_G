class Player < Struct.new(:name, :score)
  def initialize(name:, score: 0)
    super
  end
end
