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

  def ex11 do
    {:ok, contents} = File.read "hightemp.txt"
    String.replace(contents,"\t"," ")
  end

  def ex12 do
    {:ok, contents} = File.read "hightemp.txt"
    {:ok, col1} = File.open "col1.txt", [:write]
    {:ok, col2} = File.open "col2.txt", [:write]
    split_file = String.split(contents, "\n")
    split_count = Enum.count(split_file)

    split_file
    |> Enum.with_index
    |> Enum.each( (fn(x) ->
      if (elem(x, 1) != split_count and elem(x, 0) != "") do
        IO.binwrite col1, Enum.at(String.split(elem(x, 0), "\t"), 0)
        IO.binwrite col1, "\n" 
      end
    end) )

    split_file
    |> Enum.with_index
    |> Enum.each((fn(x) -> 
      if (elem(x, 1) != split_count and elem(x, 0) != "") and Enum.at(String.split(elem(x, 0), "\t"), 1) != nil do
        IO.binwrite col2, Enum.at(String.split(elem(x, 0), "\t"), 1)
        IO.binwrite col2, "\n"  
      end
    end) )

   File.close col1
   File.close col2
  end
end
