require 'spec_helper'

describe NewGame do

  it 'can be instantiated without players or a winning score' do
    expect(described_class.new).to be_a(NewGame)
  end
end
