require 'yaml'

class CustomerManager
  include Common

  def initialize
    @customers = []
  end

  # before saving load the clients if existent
  def register(customer)
    @customers.push(customer)
    save_yml_file
  end

  # fix it doesnt work 
  def search_by_id(customer_id)
    @customers = load
    result = []
    @customers.each do |customer|
      binding.pry

      next unless customer.id == customer_id
      result << [customer.name,
                 customer.age,
                 customer.type,
                 customer.loyalty_points,
                 customer.id]
    end
    result
  end

  def registered_customers
    result = []
    @customers.each { |customer| result << customer }
    result
  end

  # Update everything or just name?
  def update!(**args)
    @customers = load
    @customers.each do |customer|
      next unless customer.id == args.id
      customer.name = args.name
      customer.age = args.age
      customer.type = args.type
    end
    save_yml_file
  end

  # This might not work
  def delete(customer_id)
    @customers = load
    @customers.each do |customer|
      user_to_delete = search_by_id(customer_id)
      user_to_delete.delete_if { |id| id == customer.id }
    end
    save_yml_file
  end

  private

  def save_yml_file
    File.open('database/customers.yml', 'w') do  |file|
      file.write(@customers.to_yaml)
    end
  end

  def load
    YAML.load(File.read('database/customers.yml'))
  end
end


