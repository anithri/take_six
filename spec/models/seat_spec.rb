# == Schema Information
#
# Table name: seats
#
#  id         :uuid             not null, primary key
#  goals      :integer          default([]), is an Array
#  placing    :integer          default(0)
#  score      :integer          default(0)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  chair_id   :integer
#  game_id    :uuid
#  player_id  :uuid
#
# Indexes
#
#  index_seats_on_game_id    (game_id)
#  index_seats_on_player_id  (player_id)
#
# Foreign Keys
#
#  fk_rails_...  (game_id => games.id)
#  fk_rails_...  (player_id => players.id)
#

require 'rails_helper'

RSpec.describe Seat, type: :model do
  describe 'should have attributes' do
    before(:each) do
      @seat = Seat.new
    end

    it 'should have placing and score' do
      expect(@seat.placing).to eq 0
      expect(@seat.score).to eq 0
    end

    it 'should have chair, game, and player associations' do
      expect(@seat.chair).to be_nil
      expect(@seat.game).to be_nil
      expect(@seat.player).to be_nil
    end


  end
end
