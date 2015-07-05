require 'spec_helper'
require 'kenny_g'
require 'kenny_g/scorekeeper'
require 'kenny_g/player'

describe KennyG do
  let(:params)  { { winning_score: 100 } }
  let(:kenny_g) { KennyG::please_be_the_scorekeeper(params) }

  describe '.please_be_the_scorekeeper' do
    it 'sets the winning score with valid params' do
      expect(kenny_g.winning_score).to eq 100
    end
  end

  describe '#add_player' do
    let(:player_params) { { name: 'Esme' } }
    let(:expected_players) { [Scorekeeper::Player.new(player_params)] }

    it 'increments the players count' do
      expect{ kenny_g.add_player(player_params) }
        .to change{ kenny_g.players.size }.by 1
    end
  end
end
