def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  first_card = deal_card
  second_card = deal_card
  card_total = first_card + second_card
  display_card_total(card_total)
  return card_total
end

def hit?(card_total)
prompt_user
input = get_user_input
  if input == 'h'
    card_total += deal_card
    
  elsif input == 's'
    return card_total
  
end
end

def invalid_command
  puts "Please enter a valid command."
  prompt_user
    return card_total
end

def new_hit(card_total)
card_total+=deal_card
end 

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  #setup 
welcome
card_total = initial_round
prompt_user
input = get_user_input
until card_total > 21
  if input == "h"
  card_total = new_hit(card_total)
  display_card_total(card_total)
  elsif input == "s"
  stay=true
  else
    invalid_command
  end 
  end
  if card_total == 21
    puts "You Drew Blackjack"
    return "You Win!!"
  end 
  if card_total > 21
    puts "Sorry, you hit 30. Thanks for playing!"
  end 

end
