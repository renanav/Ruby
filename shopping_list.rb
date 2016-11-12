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

  hash = { "name" => item_name, "quantity" => quantity}
  return hash
end

list = create_list()
puts list.inspect

#push the items hash into the items Array
list['items'].push(add_list_item())

#the final list
puts list.inspect
