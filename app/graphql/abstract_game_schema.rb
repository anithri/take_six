# frozen_string_literal: true

class RailsGameSchema
  Schema < GraphQL::Schema
  mutation(Types::MutationType)
  query(Types::QueryType)
end
