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

class Fixnum
  def to_lcd
    return "._.\n..|\n..|" if self == 7
    return "._.\n|.|\n|_|" if self == 0

    "...\n..|\n..|"
  end
end
