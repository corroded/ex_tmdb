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
  def version do
    Mix.Project.config[:version]
  end
end
