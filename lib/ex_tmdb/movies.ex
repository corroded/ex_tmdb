defmodule ExTmdb.Movies do
  @movies_base_url "#{ExTmdb.endpoint_url}/movie"

  def now_playing do
    get_collection("#{@movies_base_url}/now_playing")
  end

  defp get_collection(collection_url) do
    {:ok, response} = HTTPoison.get(collection_url)
    response.body |> Poison.decode!
  end
end
