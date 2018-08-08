require 'rails_helper'

RSpec.describe FindPlayers, type: :interactor do
  describe '.call' do
    it 'should add an array of 4 players to the context' do
      result = FindPlayers.call
      expect(result.players).to be_an Array
      expect(result.players.length).to eq 4
      expect(result.players).to all be_a Player
    end
  end
end
