# == Schema Information
#
# Table name: games
#
#  id          :uuid             not null, primary key
#  decks_json  :jsonb            not null
#  finished_at :datetime
#  name        :string           not null
#  phase       :integer          default(0), not null
#  pools_json  :jsonb            not null
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
  has_many :players

  def decks
    @decks ||= Decks.new(self)
  end

  def pools
    @pools ||= Pools.new(self)
  end

  def deal
    decks.deal
    pools.deal
  end

  scope :current, ->{where(finished_at: nil)}
end
