# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:

# 1. Store the string from input which seperated by spaces into an array
# 2. Create a empty hash with zero as the default value
# 3. Iterate on the array to fill each item into the empty hash

# output: hash


def make_list(x)
  arr = x.split(" ")
  hash = Hash.new(0)
  arr.each { |item| hash[item] = 0 }
  hash
end  


# Method to add an item to a list
# input: The list, New item name and its quantity (optional)
# steps: New item name and its quantity
# output: hash

def add_item(list, item, quantity=0)
  list[item] = quantity
end

# Method to remove an item from the list
# input: Existing item you want to remove
# steps: iterate through the hash list, then delete it if found item that match
# output: hash

def remove_item(list, item)
  list.each { |key ,value| return list.delete(key) if key == item }
end

  
# Method to update the quantity of an item
# input: Item you want to update and the new quantity for it
# steps: Iterate through the hash list and update the value
# output: hash

def update_quantity(list, item, quantity)
  list.each { |key ,value| list[key]= quantity if key == item }
end

# Method to print a list and make it look pretty
# input: the grocery list we created at the begining
# steps: iterate each key/value pair and puts it to the console
# output: strings

def print_list(list)
  list.each do |key, value|
    puts "We have #{value} #{key}."
  end
end

puts "===> Making a list with Lemonade, Tomatoes, Onions and Apples."
grocery_list = make_list("Lemonade Tomatoes Onions Apples")
puts grocery_list

puts " "
puts "===> Adding 5 Oranges"
add_item(grocery_list, "Oranges", 5)
puts grocery_list

puts " "
puts "===> Removing Lemonade"
remove_item(grocery_list, "Lemonade")
puts grocery_list

puts " "
puts "===> Updating Tomatoes' quantity to 10"
update_quantity(grocery_list, "Tomatoes", 10)
puts grocery_list

puts " "
print_list(grocery_list)




