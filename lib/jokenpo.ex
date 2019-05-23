defmodule Jokenpo do
  def play "rock", b do
    case b do
      "scissor" -> "rock"
      "paper" -> "paper"
      _ -> nil
    end
  end

  def play "paper", b do
    case b do
      "rock" -> "paper"
      "paper" -> nil
      _ -> b
    end
  end

  def play "scissor", b do
    case b do
      "rock" -> "rock"
      "paper" -> "scissor"
      _ -> nil
    end
  end
end
