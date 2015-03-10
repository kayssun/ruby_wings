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

  def test_hash_key_converts_to_symbol
    with_strings = { 'a' => 'b', 'c' => { 'd' => 'e', 'f' => [1, 2, 3] } }
    with_symbols = { :a => 'b', :c => { :d => 'e', :f => [1, 2, 3] } }
    assert_equal with_symbols, with_strings.symbolize
  end

end