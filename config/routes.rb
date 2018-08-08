# frozen_string_literal: true

# == Route Map
#
#                    Prefix Verb URI Pattern                                                                              Controller#Action
#                pages_home GET  /pages/home(.:format)                                                                    pages#home
#            graphiql_rails      /graphiql                                                                                GraphiQL::Rails::Engine {:graphql_path=>"/graphql"}
#                   graphql POST /graphql(.:format)                                                                       graphql#execute
#        rails_service_blob GET  /rails/active_storage/blobs/:signed_id/*filename(.:format)                               active_storage/blobs#show
# rails_blob_representation GET  /rails/active_storage/representations/:signed_blob_id/:variation_key/*filename(.:format) active_storage/representations#show
#        rails_disk_service GET  /rails/active_storage/disk/:encoded_key/*filename(.:format)                              active_storage/disk#show
# update_rails_disk_service PUT  /rails/active_storage/disk/:encoded_token(.:format)                                      active_storage/disk#update
#      rails_direct_uploads POST /rails/active_storage/direct_uploads(.:format)                                           active_storage/direct_uploads#create
#
# Routes for GraphiQL::Rails::Engine:
#        GET  /           graphiql/rails/editors#show

Rails.application.routes.draw do
  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
  end
  post "/graphql", to: "graphql#execute"

  get 'pages/home'
  root 'pages#home'
end
