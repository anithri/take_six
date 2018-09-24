class FetchDecks
  include Interactor

  def call
    context.decks = Deck.where(find_args).card_group(group)
  end

  def args
    context.args
  end

  def game_id
    context.args[:game_id]
  end

  def deck_ids
    context.args[:deck_ids]
  end

  def find_args
    where_args = {
      game_id: game_id,
      deck_ids: deck_ids,
    }.compact
  end

  def group
    (context.args[:group] || 'All')
  end
end
