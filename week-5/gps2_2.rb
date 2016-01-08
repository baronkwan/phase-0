# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:

# 1. make an empty array and hash
# 2. have the string from input, 
# 3. seperate the string by spaces, 
# 4. put the seperated items into an array, 
# 5.iterrate on the array to prompt the user for quantities, 
# 6. put it into the hash,
# 7. print

  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]


def make_list(x)
  a = []
  a = x.split(" ")
  a.each do |item| 
    puts "What is the quantity for #{item}"
    c = gets.chomp.to_i
    LIST[item] = "#{c}"
  end
  return LIST
end  


# Method to add an item to a list
# input: item name and optional quantity
# steps: New item name and its quantity
# output: hash

def add_item(x,y=0)
  LIST[x] = y
end

# Method to remove an item from the list
# input: Existing item you want to remove
# steps: iterate through the hash list, then delete it if found item that match
# output: hash

def remove_item(x)
  LIST.each do |key ,value| 
    if key == x.to_s; LIST.delete(key) 
    end
  end
  puts LIST
end

  
# Method to update the quantity of an item
# input: Item you want to update and the new quantity for it
# steps: Iterate through the hash list and update the value
# output: hash

def update_quantity(x,y)
  LIST.each do |key ,value| 
    if key == x.to_s; LIST[key]=y 
    end
  end
end

# Method to print a list and make it look pretty
# input: nothing
# steps: iterate each key/value pair and puts it
# output: strings

def print_list
  LIST.each do |key, value|
    puts "We have #{value} #{key}"
  end
end


LIST = Hash.new(0)
make_list("Lemonade Tomatoes Onions Ice-Cream")
remove_item("Lemonade")
update_quantity("Ice-Cream",1)
print_list




