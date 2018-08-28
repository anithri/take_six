# == Schema Information
#
# Table name: games
#
#  id         :uuid             not null, primary key
#  decks_json :jsonb            not null
#  phase      :integer          default(0), not null
#  pools_json :jsonb            not null
#  turn       :integer          default(0), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
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
      expect(@game.seats).to be_empty
    end

    it 'should have decks and pools' do
      expect(@game.decks).to eq({})
      expect(@game.pools).to eq({})
    end

  end
end
