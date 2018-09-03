# == Schema Information
#
# Table name: decks
#
#  id         :uuid             not null, primary key
#  card_data  :jsonb            not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  board_id   :string
#  game_id    :uuid
#
# Indexes
#
#  index_decks_on_game_id  (game_id)
#
# Foreign Keys
#
#  fk_rails_...  (game_id => games.id)
#

class Deck < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions

  belongs_to :game
  belongs_to :board

  def cards
    card_data.map{|card_id| Card.find(card_id)}
  end
end
