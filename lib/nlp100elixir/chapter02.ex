defmodule Nlp100elixir.Chapter02 do
  def ex10 do
    {:ok, contents} = File.read "hightemp.txt"
    split_file = String.split(contents, "\n")
    split_count = Enum.count(split_file)
    if Enum.at(split_file, split_count - 1) == "" do
      split_count - 1
    else
      split_count
    end
  end
end
