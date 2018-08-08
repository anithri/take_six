# frozen_string_literal: true

# == Schema Information
#
# Table name: games
#
#  id         :uuid             not null, primary key
#  phase      :integer          default(0)
#  turn       :integer          default(0)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Game < ApplicationRecord
  has_many :boards
  has_many :players, through: :boards
end
