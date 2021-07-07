def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return rand(1...11)
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
  hand = deal_card + deal_card
  display_card_total(hand)
  return hand
end

def hit?(curr_card_ttl)
  prompt_user
  case get_user_input
    when "s"
    curr_card_ttl
    when "h"
      curr_card_ttl += deal_card
  else
    invalid_command
  end
end

def invalid_command
  puts "Please enter a valid command"
  prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################



def runner
  welcome
  curr_card_ttl = initial_round
  until curr_card_ttl > 21
  curr_card_ttl = hit?(curr_card_ttl)
  display_card_total(curr_card_ttl)
    end
  end_game(curr_card_ttl)
end

