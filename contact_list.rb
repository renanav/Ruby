# a method that I'll call every time I'm asking a question
def ask(question, kind="string")
  print question + " "
  answer = gets.chomp
  #in case the answer is a number I would convert it to integer
  answer = answer.to_i if kind == "number"
  return answer
end

# a method to add contacts to the list. a contact is a hash, since one contact can have more than one number, the phone number value is an array
def add_contact
    contact = {"name" => "", "phone_numbers" => []}
    contact["name"] = ask("What is the person's name?")
    # a loop to add a phone number to a contact
    answer = ""
    while answer != "n"
      answer = ask("Would you like to add a phone number? (y/n)")
      if answer == "y"
        phone = ask("Enter a phone number:")
        contact["phone_numbers"].push(phone)
      end
    end
    return contact
end

# a contact list array
contact_list = []

answer = ""
while answer != "n"
  #I'm adding the result of the add_contact method to the contact_list array
  contact_list.push(add_contact())
  answer = ask("Add another name? (y/n)")
end

puts "---"

#An each loop to print out the contact_list
contact_list.each do |contact|
  puts "Name #{contact["name"]}"
#check if there is a phone number associated with the contacts
  if contact["phone_numbers"].size > 0
    contact["phone_numbers"].each do |phone_number|
      puts "Phone: #{phone_number}"
    end
  end
  puts "---\n"
end
