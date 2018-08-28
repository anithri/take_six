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

class Slot < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions

  belongs_to :game
  belongs_to :card
  belongs_to :location

  def workers
    worker_ids.map{|w| Worker.find(w)}
  end
end
