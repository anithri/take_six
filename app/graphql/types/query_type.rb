class Types::QueryType < Types::BaseObject
  # Add root-level fields here.
  # They will be entry points for queries on your schema.

  field :status, Types::StatusType, null: true do
    argument :id, ID, required: true
  end
  field :statuses, [Types::StatusType], null: false

  field :category, Types::CategoryType, null: true do
    argument :id, ID, required: true
  end

  field :categories, [Types::CategoryType], null: false

  field :internal_project, Types::InternalProjectType, null: true do
    argument :id, ID, required: true
  end

  field :internal_projects, [Types::InternalProjectType], null: false do
    argument :category_id, Int, required: false
    argument :category_ids, [Int], required: false
    argument :status_id, Int, required: false
    argument :status_ids, [Int], required: false
    argument :name_contains, String, required: false
  end


  def internal_project(id:)
    InternalProject.find(id)
  end

  def internal_projects(category_id: nil, category_ids: nil, status_id: nil, status_ids: nil,
                        name_contains: nil)
    InternalProject.all
  end

  def status(id:)
    Status.find(id)
  end

  def statuses
    Status.all
  end

  def category(id:)
    Category.find(id)
  end

  def categories
    Category.all
  end

end
