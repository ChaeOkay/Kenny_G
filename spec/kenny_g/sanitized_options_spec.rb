require 'spec_helper'
require 'kenny_g/errors'
require 'kenny_g/sanitized_options'

describe SanitizedOptions do
  it 'raises error if no name is provided' do
    options = { winning_score: 100, players: nil }
    expect{ described_class.new(options) }
      .to raise_error(Errors::NoPlayerName)
  end

  it 'raises error if name is an empty string' do
    options = { winning_score: 100, players: '' }
    expect{ described_class.new(options) }
      .to raise_error(Errors::NoPlayerName)
  end

  it 'raises error if winning score is less than 0' do
    options = { winning_score: -1, players: 'emily' }
    expect{ described_class.new(options) }
      .to raise_error(Errors::InvalidWinningScore)
  end
end

