# == Schema Information
#
# Table name: seats
#
#  id         :uuid             not null, primary key
#  goals      :string           default([]), is an Array
#  placing    :integer          default(0)
#  score      :integer          default(0)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  chair_id   :string
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

class Seat < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions

  belongs_to :game
  belongs_to :player
  belongs_to :chair
end
