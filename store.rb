require_relative 'model/person'
require_relative 'model/customer'
require_relative 'manager/customerManager'
require 'pry'

class Store
  puts "Welcome to Avelino's Store"

  #Customer 1
  customer1 = Customer.new("Wellington", 27, "vip")
  customerManager = CustomerManager.new
  well =  customerManager.register(customer1)


  xablau = customerManager.registered_customers



  customer2 = Customer.new("Naiana", 30, "normal")
  customerManager.register(customer2)

  binding.pry
end






