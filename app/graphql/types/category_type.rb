class Types::CategoryType < Types::BaseObject
  description 'A Category of Internal Projects'

  field :name, String, null: true
  description 'name of category'

  field :abbr, String, null: true
  description 'abbreviation for category'

  field :alternatives, [String], null: true
  description "alternative abbr's for category"

end
