require 'spec_helper'

describe NewGame do
  subject(:new_game) { described_class.new }

  it 'can be instantiated without players or a winning score' do
    expect(described_class.new).to be_a(NewGame)
  end
end
