def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return rand(1..11)
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
  return total
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  sum = deal_card + deal_card
  display_card_total(sum)
end

def hit? (current_total)
  prompt_user
  input = get_user_input

  if input == 'h'
    new_total = current_total + deal_card
    return new_total
  elsif input == 's'
    return current_total
  else
    invalid_command
  end
end

def invalid_command(input)
  puts "Please enter a valid command"
  prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card_total = initial_round
  while card_total < 21
    card_total = hit?(card_total)
    card_total = display_card_total(card_total)
  end
  end_game(card_total)

end
