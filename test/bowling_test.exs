defmodule BowlingTest do
  use ExUnit.Case

  test "#iterate" do
    assert Bowling.iterate([1,2,3,4], &(&1 + &2 + 1)) == [4,6,8,5]
  end

  test "line of 1 results in " do
    score = Bowling.score("11 11 11 11 11 11 11 11 11 11")
    assert score == 20
  end

  test "handles a single spares" do
    score = Bowling.score("5/5")
    assert score == 15
  end

  test "handles two spares" do
    score = Bowling.score("5/ 5/5")
    assert score == 30
  end

  @tag :skip
  test "handles a bunch of spares" do
  end

  @tag :skip
  test "handles a strike" do
  end

  @tag :skip
  test "handles a bunch strike" do
  end
end
