# == Schema Information
#
# Table name: slots
#
#  id          :uuid             not null, primary key
#  worker_ids  :string           default([]), not null, is an Array
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  card_id     :string           not null
#  game_id     :uuid
#  location_id :string           not null
#
# Indexes
#
#  index_slots_on_game_id                              (game_id)
#  index_slots_on_game_id_and_location_id_and_card_id  (game_id,location_id,card_id) UNIQUE
#
# Foreign Keys
#
#  fk_rails_...  (game_id => games.id)
#

require 'rails_helper'

RSpec.describe Slot, type: :model do
  describe 'instance has attributes' do
    before(:each) do
      @slot= Slot.new
    end

    it 'should have empty workers' do
      expect(@slot.workers).to be_empty
    end

    it 'should have empty card, game, and location' do
       expect(@slot.card).to be_nil
       expect(@slot.game).to be_nil
       expect(@slot.location).to be_nil
    end

  end
end
