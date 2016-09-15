defmodule Chapter01Test do
  use ExUnit.Case
  doctest Nlp100elixir.Chapter01

  test "ex00" do
    assert "desserts" == Nlp100elixir.Chapter01.ex00
  end

  test "test01" do
    assert "パトカー" == Nlp100elixir.Chapter01.ex01
  end
end
