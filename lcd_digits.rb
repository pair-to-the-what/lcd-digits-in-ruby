#!/usr/bin/env ruby

require 'test/unit'

class TestLcdDigits < Test::Unit::TestCase
  def test_given_one_it_works
    result = 1.to_lcd

    expected = "...\n..|\n..|"

    assert_equal(expected, result)
  end
end

class Fixnum
  def to_lcd
    "...\n..|\n..|"
  end
end
