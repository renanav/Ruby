def create_list
  print "What is the list name? "
  name = gets.chomp

  hash = { "name" => name, "items" => Array.new }
end

def add_list_item
  print "What is the name of the item called? "
  item_name = gets.chomp

  print "How many? "
  quantity = gets.chomp.to_i

  hash = { "name" => item_name, "quantity" => quantity }
  return hash
end

#for a separator
def print_separator(character="-")
  puts character * 80
end

#a method to print the list
def print_list(list)
  puts "List: #{list['name']}"
  print_separator

  list["items"].each do |item|
    puts "\tItem: " + item['name'] + "\t\t\t" +
         "quantity: " + item['quantity'].to_s
  end

  print_separator
end

list = create_list()
puts "Lets add some items to your list"

#push the items hash into the items Array
list['items'].push(add_list_item())
list['items'].push(add_list_item())
list['items'].push(add_list_item())

#the final list
puts "Here is you list"
print_list(list)
