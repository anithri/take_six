# == Schema Information
#
# Table name: games
#
#  id          :uuid             not null, primary key
#  finished_at :datetime
#  name        :string           not null
#  phase       :integer          default(0), not null
#  turn        :integer          default(0), not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_games_on_finished_at  (finished_at)
#  index_games_on_name         (name) UNIQUE
#

class Game < ApplicationRecord
  has_many :players, autosave: true, validate: true
  has_many :decks, autosave: true, validate: true
  has_many :pools, autosave: true, validate: true

  default_scope ->{includes(:players, :decks, :pools)}
  scope :current, ->{where(finished_at: nil)}

  def pool(board_id)
    self.pools.for_board(board_id)
  end
end
