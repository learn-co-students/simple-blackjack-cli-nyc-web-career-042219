def welcome
  puts "Welcome to the Blackjack Table"
  # code #welcome here
end

def deal_card
  rand(1..11)
  # code #deal_card here
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
  # code #display_card_total here
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
  # code #prompt_user here
end

def get_user_input
  user_input = gets.chomp
  user_input
  # code #get_user_input here
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
  # code #end_game here
end

def initial_round
  card_total = deal_card() + deal_card()
  display_card_total(card_total)
  card_total

  # code #initial_round here
end

def hit?(card_total)

  input = get_user_input()
  if input == 'h'
    card_total += deal_card()
  elsif input =! 's'
    invalid_command()
    prompt_user()
  else
    card_total += 0
  end

  card_total


  # code hit? here
end

def invalid_command
  puts "Please enter a valid command"
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner

  welcome()
  cards = initial_round()

  while cards < 21
    prompt_user()
    cards = hit?(cards)
    display_card_total(cards)
  end

  end_game(cards)


  # code runner here
end
