### oop-mentorship

## Chalenge 

Imagine that you're creating an software to register customers, your first challenge will be create an way to:


- Register customer
- Search for customer
- Delete customer
- Update customer

1. Register customer

- be sure to add any kind of indentifier to the customer e.g: 'ID'


2. Search for customers 

Example:

```
def search_customer(customer_id)
 @customer_obj =  #loadymlfile
 list_of_customer 
end
```

3. Delete Customer
- Delete desired customer and save the file again

```
de delete_customer(customer_id)
 @customer_obj =  #loadymlfile
 list_of_customer 
 remove customer from the list
 save the file again
end
```

4. Update customer

- We also want to update customer this could be done in loading the desired customer, by findind it first, modifing the data
and saving the file again

```
de update_customer(customer_id)
 @customer_obj =  #loadymlfile
 list_of_customer 
 update customer 
 save the file again
end

```


Since we don't want the complexity in having an data base set up and handle tables and stuff, we'll use YML files instead.

Example in how to create YMl file and Store data


```
require 'yaml'

cars  = ["ferrari", "porsche", "mercedez"]
File.open("cars.yml", "w") { |file| file.write(cars.to_yaml) }
```

Retriving the data

```
require 'yaml'
cars_array = YAML.load(File.read("cars.yml"))
p cars_array       
#=> ["ferrari", "porsche", "mercedez"]
```

If you want to have a look in the content, the file will be on your root path

```
---
- ferrari
- porsche
- mercedez
```

You can also usa hashes to create the files :)



Bonus part:
Add V.I.P customers.
ADD a method to add VIP to a customer (during the customer creation you can generate an ID ;) so you can use it later to add the VIP)
VIP customers should have an extra property that tells us if a customer is VIP or not.

