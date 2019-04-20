defmodule Jokenpo do
  def play hand1, hand2 do
    case hand1 do
      "paper" -> handle_paper(hand2)
      "rock" -> handle_rock(hand2)
      "scissor" -> handle_scissor(hand2)
    end
  end

  def handle_paper(hand) do
    case hand do
      "paper" -> nil
      "rock" -> "paper"
      "scissor" -> "scissor"
    end
  end

  def handle_rock(hand) do
    case hand do
      "rock" -> nil
      "scissor" -> "rock"
    end
  end

  def handle_scissor(hand) do
    case hand do
      "scissor" -> nil
      "paper" -> "scissor"
    end
  end
end
