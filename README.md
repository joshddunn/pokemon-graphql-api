## Accessing data via foreign keys

The property of a foreign key is accessed by the model name

so foreign_key -> species_id refers to the PokemonSpecy model and is accessed by

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

When accessing a `has_many` attribute type you need to put it inside of the graphql array. For example

    !types[Type::PokemonSpecyType]
