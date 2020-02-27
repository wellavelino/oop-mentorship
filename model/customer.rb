require_relative 'common/commons'

class Customer
  include Common

  attr_accessor :loyalty_points
  attr_accessor :name
  attr_accessor :age
  attr_accessor :type
  attr_reader :id

  def initialize(name, age, type)
    @name = name
    @age = age
    @type = type
    @id = generate_id
    @loyalty_points = 0
  end

  def calculate_loyalty_points(points)
    @loyalty_points += points
  end
end