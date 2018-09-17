defmodule ExTmdbTest do
  use ExUnit.Case
  doctest ExTmdb

  test "returns the correct version" do
    assert ExTmdb.version() == "0.1.0"
  end

  test "returns the correct api endpoint (defaults to V3)" do
    assert ExTmdb.endpoint_url() == "https://api.themoviedb.org/3"
  end
end
