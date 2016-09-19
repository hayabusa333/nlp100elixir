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

  def ex04 do
    "Hi He Lied Because Boron Could Not Oxidize Fluorine. New Nations Might Also Sign Peace Security Clause. Arthur King Can."
    |> String.split(" ")
    |> Enum.with_index
    |> Enum.reduce([], fn(x, acc) ->
         if Enum.member?([0, 4, 5, 6, 7, 8, 14, 15, 18], elem(x, 1)) do 
           acc ++ [String.slice(elem(x, 0), 0, 1)] 
         else
           acc ++ [String.slice(elem(x, 0), 0, 2)]
         end
       end)
  end
end
