---
to: app/graphql/types/<%= h.inflection.transform(name,['undasherize','underscore'])%>_type.rb
---
# frozen_string_literal: true

class Types::<%= h.inflection.transform(name,['undasherize','camelize']) %>Type < Types::BaseObject
  description '<%= h.inflection.transform(name,['undasherize','underscore', 'titleize'])%>'

  # field :name, String, null: true
  # description 'name of category'
end
