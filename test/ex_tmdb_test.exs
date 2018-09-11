defmodule ExTmdbTest do
  use ExUnit.Case
  doctest ExTmdb

  test "returns the correct version" do
    assert ExTmdb.version() == "0.1.0"
  end
end
