#!/usr/bin/env ruby

require 'test/unit'

class TestLcdDigits < Test::Unit::TestCase
  def test_given_one_it_works
    result = 1.to_lcd

    expected = "...\n..|\n..|"

    assert_equal(expected, result)

  end

  def test_given_seven_it_works
    result = 7.to_lcd

    expected = "._.\n..|\n..|"

    assert_equal(expected, result)
  end

  def test_given_zero_it_works
    result = 0.to_lcd

    expected = "._.\n|.|\n|_|"

    assert_equal(expected, result)
  end
end

class Fixnum
  def to_lcd
    return "._.\n..|\n..|" if self == 7

    "...\n..|\n..|"
  end
end
