def welcome
  puts "Welcome to the Blackjack Table"
  # code #welcome here
end

def deal_card
   rand(1..11)
end
#
def display_card_total(total)
  puts "Your cards add up to #{total}"
  # code #display_card_total here
end
#
def prompt_user
  puts "Type 'h' to hit or 's' to stay"
  # code #prompt_user here
end

def get_user_input
  gets.chomp
  # code #get_user_input here
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"# code #end_game here
end

def initial_round
  total = deal_card + deal_card
  display_card_total(total)
  return total
end

#
def hit?(total)
   prompt_user
   input = get_user_input
   while input != "h" && "s"
    invalid_command
    prompt_user
    get_user_input
  break if input == h
   total += deal_card
 elsif   input == s
   break
  total
end
 total
end

def invalid_command
  puts "Please enter a valid command"
  prompt_user  # code invalid_command here
end

#
# #####################################################
# # get every test to pass before coding runner below #
# #####################################################
#
# def runner
#   # code runner here
# end
#
