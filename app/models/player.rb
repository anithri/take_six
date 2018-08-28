# == Schema Information
#
# Table name: players
#
#  id          :uuid             not null, primary key
#  goals       :string           default([]), is an Array
#  placing     :integer          default(0)
#  score       :integer          default(0)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  game_id     :uuid
#  location_id :string
#  user_id     :uuid
#
# Indexes
#
#  index_players_on_game_id  (game_id)
#  index_players_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (game_id => games.id)
#  fk_rails_...  (user_id => users.id)
#

class Player < ApplicationRecord
  belongs_to :user
  belongs_to :game

end
