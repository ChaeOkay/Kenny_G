require 'spec_helper'

describe KennyG do
    let(:players) { Players.collection(['shelly']) }
    let(:winning_score) { 100 }
    let(:options)  { { winning_score: winning_score, players: ['shelly'] } }

  context 'game setup' do
    describe '.please_be_the_scorekeeper' do
      let(:expected_arguments) { { players: players, winning_score: winning_score } }

      it 'creates a game' do
        expect(Game).to receive(:new).with(expected_arguments)
        described_class.please_be_the_scorekeeper(options)
      end
    end

    describe '#add_player' do
      let(:kenny_g) { described_class.please_be_the_scorekeeper(options) }

      it 'adds a player' do
        expect{ kenny_g.add_player('sally') }
          .to change{ kenny_g.players.size}.by 1
      end

      it 'raises error if game has not started' do
        kenny_g.game_started = true
        expect{ kenny_g.add_player('jerry') }.to raise_error(Errors::AddPlayers)
      end
    end
  end
end
