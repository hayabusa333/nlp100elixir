defmodule Nlp100elixir.Chapter01 do
  def ex00 do
    "stressed"
    |> String.reverse
    |> to_string
  end

  def ex01 do
    'パタトクカシーー'
    |> Enum.take_every(2)
    |> to_string
  end
end
