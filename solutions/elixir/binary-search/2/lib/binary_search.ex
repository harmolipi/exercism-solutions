defmodule BinarySearch do
  @doc """
    Searches for a key in the tuple using the binary search algorithm.
    It returns :not_found if the key is not in the tuple.
    Otherwise returns {:ok, index}.

    ## Examples

      iex> BinarySearch.search({}, 2)
      :not_found

      iex> BinarySearch.search({1, 3, 5}, 2)
      :not_found

      iex> BinarySearch.search({1, 3, 5}, 5)
      {:ok, 2}

  """

  @spec search(tuple, integer) :: {:ok, integer} | :not_found
  def search(numbers, key), do: search(numbers, key, 0, tuple_size(numbers) - 1)
  def search(_, _, min, max) when min > max, do: :not_found

  def search(numbers, key, min, max) do
    mid_index = min + div(max - min, 2)
    mid_value = elem(numbers, mid_index)

    cond do
      key == mid_value -> {:ok, mid_index}
      key < mid_value -> search(numbers, key, min, mid_index - 1)
      key > mid_value -> search(numbers, key, mid_index + 1, max)
    end
  end
end
