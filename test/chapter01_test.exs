defmodule Chapter01Test do
  use ExUnit.Case
  doctest Nlp100elixir.Chapter01

  test "ex00" do
    assert "desserts" == Nlp100elixir.Chapter01.ex00
  end

  test "ex01" do
    assert "パトカー" == Nlp100elixir.Chapter01.ex01
  end

  test "ex04" do
    assert ["H", "He", "Li", "Be", "B", "C", "N", "O", "F", "Ne", "Na", "Mi", "Al", "Si", "P", "S", "Cl", "Ar", "K", "Ca"] == Nlp100elixir.Chapter01.ex04
  end

  test "ex07" do
    x = 12
    y = "気温"
    z = 22.4
    assert "12時の気温は22.4" == Nlp100elixir.Chapter01.ex07(x, y, z)
  end
end
