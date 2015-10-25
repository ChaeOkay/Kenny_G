require 'spec_helper'
require 'kenny_g/players/player'

describe Player do
  let(:user) { 'Julia' }
  subject(:player) { described_class.new(user: user) }

  describe '.convert_users' do
    it 'creates many players from many users' do
      users = [ 'Heather', 'Jennifer' ]
      players = described_class.convert_users(users)
      expect(players.size).to eq users.size
    end
  end
end
