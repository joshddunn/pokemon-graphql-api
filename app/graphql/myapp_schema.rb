MyappSchema = GraphQL::Schema.define do
  query(Types::QueryType)
  default_max_page_size 50
  max_depth 5 
end
