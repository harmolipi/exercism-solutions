defmodule HighScore do
  @initial_score 0

  def new(), do: %{}
  def add_player(scores, name, score \\ @initial_score), do: scores |> Map.put(name, score)
  def remove_player(scores, name), do: scores |> Map.delete(name)
  def reset_score(scores, name), do: scores |> Map.put(name, @initial_score)
  def get_players(scores), do: scores |> Map.keys()

  def update_score(scores, name, score) do
    old_score =
      if is_nil(scores[name]) do
        0
      else
        scores[name]
      end

    scores
    |> Map.put(name, old_score + score)
  end
end
