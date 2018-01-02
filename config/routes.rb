Rails.application.routes.draw do
  mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/v1"

  post "/v1", to: "graphql#execute"

  root "static_page#home"
end
