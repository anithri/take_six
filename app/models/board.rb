# frozen_string_literal: true

# == Schema Information
#
# Table name: boards
#
#  id             :uuid             not null, primary key
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  card_hand_id   :uuid
#  game_id        :uuid
#  player_id      :uuid
#  worker_area_id :uuid
#
# Indexes
#
#  index_boards_on_card_hand_id    (card_hand_id)
#  index_boards_on_game_id         (game_id)
#  index_boards_on_player_id       (player_id)
#  index_boards_on_worker_area_id  (worker_area_id)
#
# Foreign Keys
#
#  fk_rails_...  (card_hand_id => card_hands.id)
#  fk_rails_...  (game_id => games.id)
#  fk_rails_...  (player_id => players.id)
#  fk_rails_...  (worker_area_id => worker_areas.id)
#

class Board < ApplicationRecord
  belongs_to :game
  belongs_to :player
  belongs_to :card_hand
  belongs_to :worker_area
end
