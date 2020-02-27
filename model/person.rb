

class Person

  attr_accessor :name
  attr_accessor :age
  attr_accessor :type

  def initialize
    @name = name
    @age = age
    @type = type
  end

  def register_as(type)
    @type = type
  end
end