defmodule Spin do
  def spin_words(message) do
    message
    |> String.split()
    |> Enum.map(&spin/1)
    |> Enum.join(" ")
  end

  defp spin(word) do
    if String.length(word) >= 5 do
      String.reverse(word)
    else
      word
    end
  end
end
