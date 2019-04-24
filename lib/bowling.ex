defmodule Bowling do
  def iterate [head | []], function do
    [function.(head, 0)]
  end

  def iterate [head1 | tail], function do
    [head2 |  _] = tail
    [function.(head1, head2)] ++ iterate(tail, function)
  end

  def score game_string do
    String.split(game_string, " ")
    |> iterate(fn frame, next_frame -> calculate(frame, next_frame) end)
    |> Enum.reduce(0, fn n, acc -> acc + n end)
  end

  def calculate_spare frame do
    case String.graphemes(frame) do
      [f1, _] -> parse(f1)
      [f1, _, _] -> parse(f1)
    end
  end

  def calculate frame, next_frame do
    case String.graphemes(frame) do
      [_, "/", f1] -> 10 + parse(f1)
      [_, "/"] -> 10 + calculate_spare(next_frame)
      [f1, f2] -> parse(f1) + parse(f2)
    end
  end

  def parse number do
    {n, _} = Integer.parse(number)
    n
  end
end
