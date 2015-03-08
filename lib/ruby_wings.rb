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


module RubyWings
  # Your code goes here...
end
