# frozen_string_literal: true
# == Schema Information
#
# Table name: users
#
#  id         :uuid             not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ApplicationRecord
  has_many :players
  has_many :games, through: :players

  scope :random, -> { order(Arel::Nodes::NamedFunction.new('RANDOM', [])) }
  scope :active, -> { all }
  scope :for_game, -> (count) { active.random.limit(count) }
end
