# frozen_string_literal: true

class AbstractGame
  Schema < GraphQL::Schema
  mutation(Types::MutationType)
  query(Types::QueryType)
end
