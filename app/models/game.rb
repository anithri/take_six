# == Schema Information
#
# Table name: games
#
#  id         :uuid             not null, primary key
#  decks      :jsonb            not null
#  phase      :integer          default(0), not null
#  pools      :jsonb            not null
#  turn       :integer          default(0), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Game < ApplicationRecord
  has_many :seats
end
