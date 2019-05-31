defmodule LeapYearTest do
  use ExUnit.Case

  test "1996 is a leap year" do
    assert LeapYear.is?(1996) == true
  end

  test "1400 isnt a leap year" do
    assert LeapYear.is?(1400) == false
  end

  test "2000 is a leap year" do
    assert LeapYear.is?(2000) == true
  end
end
