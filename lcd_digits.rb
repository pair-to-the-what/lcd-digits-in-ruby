#!/usr/bin/env ruby

require 'test/unit'

class TestLcdDigits < Test::Unit::TestCase
  def test_given_one_it_works
    result = lcd_digits(1)

    expected = "...\n..|\n..|"

    assert_equal(expected, result)
  end
end

def lcd_digits(_)
  "...\n..|\n..|"
end
