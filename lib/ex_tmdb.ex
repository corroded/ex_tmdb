defmodule ExTmdb do
  @moduledoc """
  Documentation for ExTmdb.
  """

  @doc """
  Prints out the current project version

  ## Examples

      iex> ExTmdb.version()
      "0.1.0"

  """
  @spec version() :: String.t
  def version do
    Mix.Project.config[:version]
  end

  @doc """
  Prints out the base url with default version (V3)

  ## Examples

      iex> ExTmdb.endpoint_url()
      "https://api.themoviedb.org/3"

      iex> ExTmdb.endpoint_url(4)
      "https://api.themoviedb.org/4"
  """
  @spec endpoint_url(String.t) :: String.t
  def endpoint_url(version \\ 3) do
    "#{Application.get_env(:ex_tmdb, :base_url)}/#{version}"
  end
end
