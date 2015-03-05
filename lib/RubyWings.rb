require 'RubyWings/version'


# Make access to hash values easier
class ::Nil
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
