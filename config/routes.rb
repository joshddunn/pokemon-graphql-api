Rails.application.routes.draw do
  mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/v1"

  post "/v1", to: "graphql#execute"
  get "/v1", to: "static_page#query"
end
