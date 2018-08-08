# == Schema Information
#
# Table name: card_hands
#
#  id         :uuid             not null, primary key
#  cards_ids  :integer          default([]), is an Array
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class CardHand < ApplicationRecord
  has_many :boards
end
