# == Schema Information
#
# Table name: games
#
#  id         :uuid             not null, primary key
#  decks_json :jsonb            not null
#  phase      :integer          default(0), not null
#  pools_json :jsonb            not null
#  turn       :integer          default(0), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Game < ApplicationRecord
  has_many :seats

  def decks
    @decks ||= Decks.new(self)
  end

  def pools
    @pools ||= Pools.new(self)
  end
end
