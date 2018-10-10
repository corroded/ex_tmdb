defmodule ExTmdb.MixProject do
  use Mix.Project

  def project do
    [
      app: :ex_tmdb,
      version: "0.1.0",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      description: description(),
      package: package(),
      deps: deps(),
      source_url: "https://github.com/corroded/ex_tmdb"
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ex_doc, "~> 0.18.0", only: :dev, runtime: false},
      {:httpoison, "~> 1.0"},
      {:poison, "~> 4.0"},
      {:bypass, "~> 0.8", only: :test},
    ]
  end

  defp description do
    "Elixir wrapper library for TMDB (https://www.themoviedb.org/documentation/api)"
  end

  defp package do
    [
      files: ["lib", "mix.exs", "README.md", "LICENSE*"],
      maintainers: ["Eumir Gaspar"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/corroded/ex_tmdb"}
    ]
  end
end
