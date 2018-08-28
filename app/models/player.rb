# frozen_string_literal: true

# == Schema Information
#
# Table name: players
#
#  id         :uuid             not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Player < ApplicationRecord

  has_many :seats
  has_many :games, through: :seats

  scope :random, -> { order(Arel::Nodes::NamedFunction.new('RANDOM', [])) }
  scope :active, -> { all }
  scope :for_game, -> (count) { active.random.limit(count) }
end
