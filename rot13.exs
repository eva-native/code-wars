defmodule Encryptor do
  def rot13(string) do
    string
    |> String.to_charlist()
    |> Enum.map(fn ch -> rot(ch, 13) end)
    |> List.to_string()
  end

  defp rot(ch, c) do
    cond do
      ch in ?A..?Z -> rem(ch - ?A + c, 26) + ?A
      ch in ?a..?z -> rem(ch - ?a + c, 26) + ?a
      true -> ch
    end
  end
end
