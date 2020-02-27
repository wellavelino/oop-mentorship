require_relative 'common/commons'

class Customer
  include Common
  attr_accessor :loyalty_points
  attr_accessor :name
  attr_accessor :age
  attr_accessor :type

  def initialize(name, age, type)
    @name = name
    @age = age
    @type = type
    @id = id
    @loyalty_points = 0
  end

  def calculate_loyalty_points(points)
    @loyalty_points += points
  end

  def type(type)
  return if type.nil?
  @type = type
  end
end