# ExTmdb

**TODO: Add description**

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `ex_tmdb` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:ex_tmdb, "~> 0.1.0"}
  ]
end
```

## Configuration

This checks for the (v3 auth) API key in TMDB which can be found [here](https://www.themoviedb.org/settings/api).

After getting an API key, create the appropriate configuration file as shown in `config/secret_example.exs`.
The file name should be based on your environment, so `dev` should be `config/dev.secret.exs` and `production`
should be `config/prod.secret.exs`.

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/ex_tmdb](https://hexdocs.pm/ex_tmdb).

