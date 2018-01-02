## Accessing data via foreign keys

The property of a foreign key is accessed by the model name

so foreign_key -> species_id refers to the PokemonSpecy model and is accessed
by

Pokemon.first.pokemon_specy

## Automated graphql types

Write a script to take the defined models and build the basic graphql types
Write a script for the query_types as well

## Database lookup

PokemonSpecy is the parent model to Pokemon

Child to parent (notice singular)

  Pokemon.first.pokemon_specy

Parent to child (notice plural)

  PokemonSpecy.first.pokemons

## CSV Issues

move_effects.csv only has an id column

## Graphql types

When accessing a `has_many` attribute type you need to put it inside of the
graphql array. For example

    !types[Type::PokemonSpecyType]

## Don't be dumb. If a test isnt working, you probably didn't seed your test database.

## The difference between !types.String and types.String

In graphql-ruby, you can have types that are prefaced by `!`. Fields that are
prefaced by `!` (like `!types.String`) will expect values to be of that type,
and if they aren't the parent node will be returned as `null`. However, fields
that are not prefaced with `!` (like `types.String`) will expect the returned
value to be a string, but without strong consequences. If not of the defined
type, it will simply return `null` for that field. 

gwap - turns the ugly formatted paraph into a nicely formatted one.  

gq - formats the visually selected line

## production

Need to precompile assets

  qc prails assets:precompile

Also need to add `RAILS_SERVE_STATIC_FILES=true` to the `.env` file.

  - SECRET_KEY_BASE
  - RAILS_SERVE_STATIC_FILES
  - PROD_DB_PASS

To make the production go live (and run in background)

    docker-compose -f docker-compose.prod.yml up -d

## TO DO

  - Add connection types for each type
  - Use connection for endpoints
  - 'Advanced' filtering for each of the endpoints
