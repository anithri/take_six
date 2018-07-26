class Types::InternalProjectType < Types::BaseObject
  field :id, ID, null: false
  field :name, String, null: false
  field :itar_flag, Boolean, null: false
  field :project_num, Int, null: false
  field :category_id, Int, null: false
  field :display_name, String, null: false
  field :category, Types::CategoryType, null: false
  field :status, Types::StatusType, null: false
end
