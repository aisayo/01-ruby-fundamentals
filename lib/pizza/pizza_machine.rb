def init
  puts "Welcome to the lean, mean Pizza Machine App!"
  puts "Tell us your name: "
  user = gets.strip
  puts "Awesome, #{user.capitalize}, What would you like to do?"
  menu
  menu_selection
  goodbye
end 

def menu
  puts "Enter the number of your selection, or 'exit' to leave the app."
  menu_options
end 

def menu_options
  puts " 1. Create a new pizza!"
  puts " 2. View the list of created pizzas"
  puts " Change your mind? Type 'exit' to leave the app"
end 

def menu_selection
  selection = gets.strip

  while selection != "exit"
    if selection == "1"
      create_pizza
    elsif selection == "2"
      puts "2"
    else
      puts "Um, looks like something went wrong. Try again: "
    end 
    menu_options
    selection = gets.strip
  end 
end 

def create_pizza
  puts "Name of pizza, get creative!:"
  name = gets.strip
  puts "List your toppings: "
  toppings = gets.strip
  puts "Describe this pizza: "
  desc = gets.strip 

  pizza = {
    name: name,
    toppings: toppings,
    desc: desc
  }

  binding.pry
end 

def goodbye
  puts "Hopefully we'll see you back soon!"
end 