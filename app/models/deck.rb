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

  scope :for_game, ->(game_id){where(game_id: game_id)}
  scope :for_board, ->(board_id) {find_by_board_id(board_id)}
  def cards
    card_data.map{|card_id| Card.find(card_id)}
  end
end
