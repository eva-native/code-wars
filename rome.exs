defmodule ArabicToRoman do
  def solution(n) do
    roman_iter(n, "", 13)
  end

  defp roman_iter(n, s, k) when n > 0 do
    {mod, sym} = kind_of_roman(k)
    s = s <> String.duplicate(sym, div(n, mod))
    n = rem(n, mod)
    k = k - 1
    roman_iter(n, s, k)
  end

  defp roman_iter(0, s, _), do: s

  defp kind_of_roman(kind) do
    case kind do
      1 -> { 1, "I" }
      2 -> { 4, "IV" }
      3 -> { 5, "V" }
      4 -> { 9, "IX" }
      5 -> { 10, "X" }
      6 -> { 40, "XL" }
      7 -> { 50, "L" }
      8 -> { 90, "XC" }
      9 -> { 100, "C" }
      10 -> { 400, "CD" }
      11 -> { 500, "D" }
      12 -> { 900, "CM" }
      13 -> { 1000, "M" }
      _ -> :error
    end
  end
end
