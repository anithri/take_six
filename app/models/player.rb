# == Schema Information
#
# Table name: players
#
#  id         :uuid             not null, primary key
#  goals      :string           default([]), is an Array
#  name       :string           not null
#  placing    :integer          default(0)
#  score      :integer          default(0)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  board_id   :string
#  game_id    :uuid
#  user_id    :uuid
#
# Indexes
#
#  index_players_on_game_id           (game_id)
#  index_players_on_game_id_and_name  (game_id,name) UNIQUE
#  index_players_on_user_id           (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (game_id => games.id)
#  fk_rails_...  (user_id => users.id)
#

class Player < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :user
  belongs_to :game
  belongs_to :board

  default_scope ->{order(:board_id)}

  def workers
    goals.map{|id| Worker.find(id)}
  end
end
