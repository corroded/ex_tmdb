defmodule ExTmdb.MoviesTest do
  use ExUnit.Case

  @mock_response %{
    "dates" => %{"maximum" => "2018-09-21", "minimum" => "2018-08-04"},
    "page" => 1,
    "results" => [
      %{
        "adult" => false,
        "backdrop_path" => "/fgsHxz21B27hOOqQBiw9L6yWcM7.jpg",
        "genre_ids" => [27, 9648, 53],
        "id" => 439079,
        "original_language" => "en",
        "original_title" => "The Nun",
        "overview" => "When a young nun at a cloistered abbey in Romania takes her own life, a priest with a haunted past and a novitiate on the threshold of her final vows are sent by the Vatican to investigate. Together they uncover the order’s unholy secret. Risking not only their lives but their faith and their very souls, they confront a malevolent force in the form of the same demonic nun that first terrorized audiences in “The Conjuring 2,” as the abbey becomes a horrific battleground between the living and the damned.",
        "popularity" => 250.681,
        "poster_path" => "/sFC1ElvoKGdHJIWRpNB3xWJ9lJA.jpg",
        "release_date" => "2018-09-05",
        "title" => "The Nun",
        "video" => false,
        "vote_average" => 6.1,
        "vote_count" => 325
      },
      %{
        "adult" => false,
        "backdrop_path" => "/sl5Zlecwsu0tWkAliUxartbpaav.jpg",
        "genre_ids" => '[27]',
        "id" => 505058,
        "original_language" => "en",
        "original_title" => "Unfriended: Dark Web",
        "overview" => "​When a 20-something finds a cache of hidden files on his new laptop, he and his friends are unwittingly thrust into the depths of the dark web. They soon discover someone has been watching their every move and will go to unimaginable lengths to protect the dark web.",
        "popularity" => 6.694,
        "poster_path" => "/q27yNUaEt6ohcQMEVHwvPaoKBT8.jpg",
        "release_date" => "2018-07-19",
        "title" => "Unfriended: Dark Web",
        "video" => false,
        "vote_average" => 5.7,
        "vote_count" => 25
      }
    ],
    "total_pages" => 1,
    "total_results" => 14
  }
  @mock_json_response Poison.encode!(@mock_response)

  setup do
    bypass = Bypass.open(port: 1234)
    {:ok, bypass: bypass}
  end

  test "now_playing/0", %{bypass: bypass} do
    Bypass.expect bypass, "GET", "/3/movie/now_playing", fn conn ->
      assert "GET" == conn.method
      assert "/3/movie/now_playing" == conn.request_path
      Plug.Conn.resp(conn, 200, @mock_json_response)
    end

    assert @mock_response == ExTmdb.Movies.now_playing
  end

  # test "client can handle an error response", %{bypass: bypass} do
  #   # Bypass.expect_once bypass, "POST", "/1.1/statuses/update.json", fn conn ->
  #   #   Plug.Conn.resp(conn, 429, ~s<{"errors": [{"code": 88, "message": "Rate limit exceeded"}]}>)
  #   # end
  #
  #   Bypass.expect_once bypass, "GET", "/now_playing", fn conn ->
  #     Plug.Conn.resp(conn, 200, @mock_json_response)
  #   end
  #
  #   # {:ok, client} = ExTmdb.Movies.start_link(url: endpoint_url(bypass.port))
  #   # assert {:error, :rate_limited} == ExTmdb.Movies.post_tweet(client, "Elixir is awesome!")
  # end

  # defp endpoint_url(port), do: "http://localhost:#{port}/"
end
