require 'spec_helper'

describe Players::Player do
  let(:player) { described_class.new('phil') }

  describe '#summary' do
    it 'returns a hash of attributes and values' do
      expect(player.summary).to eq({ name: 'phil', score: 0 })
    end
  end
end
