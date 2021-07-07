def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(11) + 1
end

def display_card_total(card_total)
  # code #display_card_total here
  phrase = "Your cards add up to #{card_total}"
  puts phrase
  card_total
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay" 
end

def get_user_input
  # code #get_user_input here
  res = gets.chomp
end

def end_game(points)
  # code #end_game here
  puts "Sorry, you hit #{points}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  sum = 0
  2.times do 
    sum += deal_card 
  end
  display_card_total(sum) 
end

def hit?(total)
  # code hit? here
  prompt_user
  res = get_user_input
  if res == "h"
    total += deal_card
  end
  total
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome 
  current_points = initial_round
  until current_points > 21
    current_points = hit?(current_points)
    display_card_total(current_points)
  end
  end_game(current_points)
end
    
