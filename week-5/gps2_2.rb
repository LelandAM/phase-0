# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # break up string of items into seperate values
  # assign values as keys in a hash with default quantity of 1
  # print the list to the console [can you use one of your other methods here?]
# output: list of items and quantities in a hash
list_of_items = "lemonade tomatoes onions ice-cream"

def grocery_list (list_of_items)
  split_list = list_of_items.split(" ")
  items_hash = Hash.new
  split_list.each do |food|
      items_hash[food] = "1"
  end
  return items_hash
  
end

items_hash = grocery_list(list_of_items)


# Method to add an item to a list
# input: item name and optional quantity
# steps: add item and quantiity to the container
# output: new container that includes the new item


def add_item(item, quantity)
  items_hash[item]= quantity
  return items_hash
end

puts add_item("potato", "2")

# # Method to remove an item from the list
# # input: item we want to delete
# # steps: delete specfic key
# # output: new container without the item we removed

def remove_item(item)
  smaller_items_hash = new_items_hash.delete[item]
  return smaller_items_hash
end

smaller_items_hash = remove_item("lemonade")

# # # Method to update the quantity of an item
# # # input: new quantity
# # # steps: overwrite item and quantity with new quantity
# # # output: new container with new quantity

def update_item(item, quantity)
  update_items_hash = smaller_items_hash[item] = [quantity]
  return update_items_hash
end

update_item("ice cream", "1")

# # # Method to print a list and make it look pretty
# # # input: print command
# # # steps: use print command
# # # output: pretty list

def print_list(update_items_hash)
  puts update_items_hash
end  


# # puts( your_hash.map{ |k,v| "#{k} => #{v}" }.sort )



