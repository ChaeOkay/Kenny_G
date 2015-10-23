require 'spec_helper'

describe NewGame do

  it 'can be instantiated without players or a winning score' do
    expect(described_class.new).to be_a(NewGame)
  end

  it 'can accept players and a winning score' do
    params = { players: ['jennay', 'mad max'], winning_score: 10 }
    expect(described_class.new(params)).to be_a(NewGame)
  end
end
