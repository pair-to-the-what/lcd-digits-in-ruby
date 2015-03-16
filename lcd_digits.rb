#!/usr/bin/env ruby

require 'test/unit'

class TestLcdDigits < Test::Unit::TestCase
  {
    1 => "...\n..|\n..|",
    7 => "._.\n..|\n..|",
    0 => "._.\n|.|\n|_|",
    5 => "._.\n|_.\n._|"
  }.each do |given_number, expected_digits|
    define_method("test_given_#{given_number}_it_works") do
      assert_equal(expected_digits, given_number.to_lcd)
    end
  end
end

class TestBreakUpDigits < Test::Unit::TestCase
  def test_breaking_up_3_is_just_an_array_of_3
    answer = 3.break_into_digits

    expected = [3]

    assert_equal(expected, answer)
  end

  def test_breaking_up_1_is_just_an_array_of_1
    answer = 1.break_into_digits

    expected = [1]

    assert_equal(expected, answer)
  end

  def test_breaking_up_35_is_just_an_array_of_3_and_5
    answer = 35.break_into_digits

    expected = [3, 5]

    assert_equal(expected, answer)
  end

  def test_breaking_up_0_is_just_an_array_of_just_0
    answer = 0.break_into_digits

    expected = [0]

    assert_equal(expected, answer)
  end

  def test_breaking_up_1600_is_just_an_array_of_1_6_0_and_0
    answer = 1600.break_into_digits

    expected = [1, 6, 0, 0]

    assert_equal(expected, answer)
  end
end

class Fixnum
  def to_lcd
    {
      1 => "...\n..|\n..|",
      7 => "._.\n..|\n..|",
      0 => "._.\n|.|\n|_|",
      5 => "._.\n|_.\n._|"
    }[self]
  end

  def break_into_digits
    to_s.
      split('').
      map(&:to_i)
  end
end
