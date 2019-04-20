defmodule JokenpoTest do
  use ExUnit.Case

  test "#play (paper vs rock) papers wins" do
    winner = Jokenpo.play("paper", "rock")
    assert winner == "paper"
  end

  test "#play (paper vs paper) draws" do
    winner = Jokenpo.play("paper", "paper")
    assert winner == nil
  end

  test "#play (rock vs scissor) rocks win" do
    winner = Jokenpo.play("rock", "scissor")
    assert winner == "rock"
  end

  test "#play (rock vs rock) draws" do
    winner = Jokenpo.play("rock", "rock")
    assert winner == nil
  end

  test "#play (scissor vs paper) scissor wins" do
    winner = Jokenpo.play("scissor", "paper")
    assert winner == "scissor"
  end

  test "#play (paper vs scissor) scissor wins (order independent)" do
    winner = Jokenpo.play("paper", "scissor")
    assert winner == "scissor"
  end

  test "#play (scissor vs scissor) draws" do
    winner = Jokenpo.play("scissor", "scissor")
    assert winner == nil
  end
end
