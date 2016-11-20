# a contact list array
contact_list = []

# a method that I'll call every time I'm asking a question
def ask(question, kind="string")
  print question + " "
  answer = gets.chomp
  #in case the answer is a number I would convert it to integer
  answer = answer.to_i if kind == "number"
  return answer
end

answer = ask("What is your name?")
puts answer
