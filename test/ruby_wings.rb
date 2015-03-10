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

  def test_deep_merge_merge_sub_hashes
    a = { :a => 'some_string', :b => { :foo => :bar, :with => { :even => [2, 'two', :two] } } }
    b = { :b => { :foo => :baz, :with => { :odd => [1, 'one', :one] } } }
    expected_result =  { :a => 'some_string',
                         :b => { :foo => :baz, :with => { :even => [2, 'two', :two], :odd => [1, 'one', :one] } } }
    assert_equal expected_result, a.deep_merge(b)
  end

  def test_deep_merge_overwrites_strings
    a = { :foo => 'bar' }
    b = { :foo => 'baz' }
    assert_equal b, a.merge(b)
  end

end