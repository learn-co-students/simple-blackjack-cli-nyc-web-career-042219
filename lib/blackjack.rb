def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  # num = rand(1..11)
  # num
  rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
  # code #display_card_total here
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets
end

def end_game(card_total)
  if card_total > 21
    puts "Sorry, you hit #{card_total}. Thanks for playing!"
  # code #end_game here
  end
end

def initial_round
  # code #initial_round here
  x = deal_card
  y = deal_card
  card_total = x + y
  display_card_total(card_total)
  card_total
end

def hit?(card_total)
  prompt_user
  store = get_user_input
  if store == "h"
    card_total += deal_card
    # card_total
  elsif store == "s"
    
  else
  # else 
    invalid_command
    prompt_user
  end
  # code hit? here
  card_total
end

def invalid_command
  # code invalid_command here
  "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  ct = initial_round
  # prompt_user
  until ct > 21
    ct = hit?(ct)
    display_card_total(ct)
  end
  end_game(ct)
end
    
