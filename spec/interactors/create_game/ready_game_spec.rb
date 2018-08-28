require 'rails_helper'

RSpec.describe CreateGame::ReadyGame, type: :interactor, skip: true do
  describe '.call' do
    before :each do
      @game = Game.new
      @decks = {wooticus: 'Prime'}
      @pools = {comfortably: 'Numb'}
      @readied= CreateGame::ReadyGame.call(
        decks: @decks,
        pools: @pools,
        game: @game
      )
    end
    it 'should add decks and pools to game' do
      expect(@readied.decks).to eq @decks
      expect(@readied.pools).to eq @pools
    end
  end
end
