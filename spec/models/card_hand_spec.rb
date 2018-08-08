# frozen_string_literal: true

# == Schema Information
#
# Table name: card_hands
#
#  id         :uuid             not null, primary key
#  cards_ids  :integer          default([]), is an Array
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe CardHand, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
