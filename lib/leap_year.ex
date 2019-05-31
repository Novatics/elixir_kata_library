# to discover if a year it's a leap year, it's must follow 3 rules:
# 1) can be divided by 4
# 2) it cannot be divided by 100
# 3) it can be divided by 400

defmodule LeapYear do
  def is? year do
    rem(year, 4) == 0 && rem(year, 100) != 0 || rem(year, 400) == 0
  end
end
