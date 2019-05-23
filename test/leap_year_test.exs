defmodule LeapYearTest do
  use ExUnit.Case

  test "2000 is a leap year" do
    assert LeapYear.is?(2000) == true
  end
end
