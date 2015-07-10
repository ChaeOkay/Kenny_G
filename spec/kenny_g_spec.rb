require 'spec_helper'
require 'kenny_g'
require 'kenny_g/game_setup'
require 'kenny_g/player'

describe KennyG do
  let(:params)  { { winning_score: 100,
                    players: [] } }
  let(:kenny_g) { KennyG::please_be_the_scorekeeper(params) }

  describe '.please_be_the_scorekeeper' do
    it 'sets the winning score' do
      expect(kenny_g.winning_score).to eq 100
    end

    it 'delcares players' do
      expect(kenny_g.players).to eq []
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
