# frozen_string_literal: true
# == Schema Information
#
# Table name: decks
#
#  id         :uuid             not null, primary key
#  card_data  :jsonb
#  space_type :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  game_id    :uuid
#  space_id   :string
#
# Indexes
#
#  index_decks_on_game_id     (game_id)
#  index_decks_on_space_type  (space_type)
#
# Foreign Keys
#
#  fk_rails_...  (game_id => games.id)
#

class Deck < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions

  belongs_to :game
  belongs_to :board_space, polymorphic: true

  def cards
    self.card_data.map {|card_id| Card.find(card_id)}
  end
end
