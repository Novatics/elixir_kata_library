defmodule Bowling do
  def score str do
  lista = String.split(str, " ")
  intermediario(lista)
  end

  def intermediario [head | []]  do
    numbers = String.graphemes(head)

    resultOfMap = Enum.map(numbers, fn x -> Integer.parse(x) end)
    |> Enum.map(fn {y, _} -> y end)
    Enum.sum(resultOfMap)
  end

  def numberProcess numbers do
    Enum.map(numbers, )
    case numbers do
      '/' -> 10
      _ -> Integer.parse(number)
    end
  end

  def intermediario [head | tail]  do
    numbers = String.graphemes(head)

    resultOfMap = Enum.map(numbers, fn x -> Integer.parse(x) end)
    |> Enum.map(fn {y, _} -> y end)

    Enum.sum(resultOfMap) + intermediario(tail)
  end

end
