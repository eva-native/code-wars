defmodule Spin do
  def spin_words(message) do
    message
    |> String.split()
    |> Enum.map_join(" ", &spin/1)
  end

  defp spin(word) do
    cond do
      String.length(word) >= 5 -> String.reverse(word)
      true -> word
    end
  end
end
