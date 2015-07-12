require 'spec_helper'

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

  context 'valid options' do
    let(:options) { { players: ['alice'] } }
    let(:expected_values) { { players: ['alice'], winning_score: 0 } }

    describe '#instance_values' do
      it 'returns a hash of ivars as symbols with value as the key, railsy' do
        sanitized_options = described_class.new(options)
        expect(sanitized_options.instance_values).to eq expected_values
      end
    end
  end
end

