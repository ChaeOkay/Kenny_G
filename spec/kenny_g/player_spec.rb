require 'spec_helper'

describe Player do
  let(:options) { { name: 'lilly', score: 5 } }
  subject(:player) { described_class.new(options) }

  specify '#summary' do
    expect(player.summary).to eq options
  end
end
