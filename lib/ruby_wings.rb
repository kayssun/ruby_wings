require 'ruby_wings/version'


# Make access to hash values easier
class ::NilClass
  def blank?
    true
  end
end

class ::String
  def blank?
    empty?
  end
end

if 1.is_a? Integer
  class ::Integer
    def blank?
      false
    end
  end
else
  class ::Fixnum
    def blank?
      false
    end
  end

  class ::Bignum
    def blank?
      false
    end
  end
end

# Allow recursive merging of Hashes
# thanks to http://stackoverflow.com/a/25990044
class ::Hash
  def deep_merge(second)
    merger = proc do |key, v1, v2|
      if Hash === v1 && Hash === v2
        v1.merge(v2, &merger)
      else
        [:undefined, nil, :nil].include?(v2) ? v1 : v2
      end
    end
    self.merge(second, &merger)
  end

  def symbolize
    Hash[
      self.map do |k, v|
        [(k.respond_to?(:to_sym) ? k.to_sym : k), v.class == Hash ? v.symbolize : v]
      end
    ]
  end
end

module RubyWings
  # Your code goes here...
end
