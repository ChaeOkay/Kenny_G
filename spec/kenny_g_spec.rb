require 'spec_helper'
require 'kenny_g'
require 'kenny_g/errors'
require 'kenny_g/game_setup'
require 'kenny_g/player'

describe KennyG do
  let(:params)  { { winning_score: 100, players: ['shelly'] } }
  let(:kenny_g) { KennyG.please_be_the_scorekeeper(params) }

  context '.please_be_the_scorekeeper' do
    it 'has a winning score' do
      expect(kenny_g.winning_score).to eq 100
    end

    context 'with no players' do
      let(:params)  { { winning_score: 100, players: [] } }
      it 'raises an error' do
        expect{ KennyG.please_be_the_scorekeeper(params) }
          .to raise_error(Errors::WinningScoreError)
      end
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
