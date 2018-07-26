class Types::QueryType < Types::BaseObject
  # Add root-level fields here.
  # They will be entry points for queries on your schema.

  field :status, Types::StatusType, null: false do
    argument :id, ID, required: true
  end

  field :statuses, [Types::StatusType], null: false

  def status(id:)
    Status.find(id)
  end

  def statuses
    Status.all
  end

end
