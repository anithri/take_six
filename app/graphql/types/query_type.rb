class Types::QueryType < Types::BaseObject

  #region Card Model
  field :card, ::Types::Card, null: true do
    argument :id, ID, required: true
  end
  def card(id:)
    Card.find(id)
  end

  field :cards, [::Types::Card], null: false
  def cards
    Card.all
  end
  #endregion

  #region Worker Model
  field :worker, ::Types::Worker, null: true do
    argument :id, ID, required: true
  end
  def worker(id:)
    Worker.find(id)
  end

  field :workers, [::Types::Worker], null: false
  def workers
    Worker.all
  end
  #endregion
end
