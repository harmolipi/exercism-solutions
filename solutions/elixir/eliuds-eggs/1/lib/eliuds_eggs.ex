defmodule EliudsEggs do
  @doc """
  Given the number, count the number of eggs.
  """
  @spec egg_count(number :: integer()) :: non_neg_integer()
  def egg_count(number) do
    Integer.to_string(number, 2)
    |> String.graphemes()
    |> Enum.reduce(0, fn letter, count -> if letter == "1", do: count + 1, else: count end)
  end
end
