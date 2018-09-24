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

require 'rails_helper'

RSpec.describe Deck, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
