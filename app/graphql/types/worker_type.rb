# frozen_string_literal: true

class Types::WorkerType < Types::BaseObject
  description 'Worker'

  field :name, String, null: false
  description 'name of worker'

  field :theme, String, null: false
  description 'theme for worker'

end
