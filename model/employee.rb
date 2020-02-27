class Employee
  include Common

  attr_accessor :login
  attr_accessor :password

  def initialize
    @id = id
    @login = login
    @password = password
  end
end
