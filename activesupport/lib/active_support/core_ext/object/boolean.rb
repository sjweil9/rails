# frozen_string_literal: true

class Object
  # Inspired by `.nil?`, this provides a simple predicate method for checking if an object is a boolean.
  # An object is not a boolean unless it is TrueClass or FalseClass.
  # This simplifies
  #
  #   !!object == object
  #
  # or
  #
  #   [true, false].include?(object)
  #
  # to
  #
  #   object.boolean?
  #
  # @return [true, false]
  def boolean?
    false
  end
end

class TrueClass
  def boolean?
    true
  end
end

class FalseClass
  def boolean?
    true
  end
end