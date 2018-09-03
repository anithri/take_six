# == Schema Information
#
# Table name: games
#
#  id          :uuid             not null, primary key
#  finished_at :datetime
#  name        :string           not null
#  phase       :integer          default(0), not null
#  turn        :integer          default(0), not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_games_on_finished_at  (finished_at)
#  index_games_on_name         (name) UNIQUE
#

require 'rails_helper'

RSpec.describe Game, type: :model do
  describe 'instance has attributes' do
    before(:each) do
      @game = Game.new
    end

    it 'should have phase and turn numbers' do
      expect(@game.phase).to eq 0
      expect(@game.turn).to eq 0
    end

    it 'should have seats' do
      expect(@game.players).to be_empty
    end

    it 'should have decks and pools' do
      expect(@game.decks).to be_an_instance_of Decks
      expect(@game.pools).to be_an_instance_of Pools
    end

  end
end
