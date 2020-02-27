require_relative 'model/person'
require_relative 'model/customer'
require_relative 'manager/customerManager'
require 'pry'

class Store
  puts "Welcome to Avelino's Store"

  #Customer 1
  customer1 = Customer.new("Wellington", 27, "vip")
  customerManager = CustomerManager.new
  customerManager.register(customer1)

  customer2 = Customer.new("Naiana", 30, "normal")
  customerManager.register(customer2)


  customer3 = Customer.new("Luke", 30, "normal")
  customerManager.register(customer3)

  customer4 = Customer.new("Leia", 30, "normal")
  customerManager.register(customer4)


  customerManager.registered_customers
end






