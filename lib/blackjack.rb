def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  random = (rand() * 11 + 1).to_i
  random
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  first_card = deal_card
  second_card = deal_card
  display_card_total(first_card + second_card)
  p first_card + second_card
end

def hit?(card_total)
  prompt_user
  get_user_input
  if get_user_input == 'h'
    deal_card
    card_total +=1
  elsif get_user_input != 'h' && get_user_input != 's'
    invalid_command
    prompt_user
  end
  card_total
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
end
    
