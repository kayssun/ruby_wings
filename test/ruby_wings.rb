require 'minitest/autorun'
require 'ruby_wings'

class RubyWingsTest < MiniTest::Unit::TestCase

  def setup

  end

  def test_nil_is_blank
    assert(nil.blank?)
  end

  def test_empty_string_is_blank
    assert(''.blank?)
  end

  def test_string_is_not_blank
    assert_equal('foo'.blank?, false)
  end

end