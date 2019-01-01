def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  int = 1 + rand(11)
  return int
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  user_input = gets.chomp
  return user_input
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  card1 = deal_card
  card2 = deal_card
  card_total = card1 + card2
  display_card_total(card_total)
  card_total
end

def hit?(card_total)
  prompt_user
  user_input = get_user_input
  #puts "#{user_input}"
  #user_input = "h"
  if user_input == "s"
    card_total = card_total
    puts "Your cards add up to #{card_total}"
  elsif user_input == "h"
    #puts "h branch"
    card1 = deal_card
    card_total = card1 + card_total
    puts "Your cards add up to #{card_total}"
  else 
    invalid_command
  end
  card_total
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
  real_card_total = initial_round
  until real_card_total > 21
    #hit?(real_card_total)
    real_card_total = real_card_total + hit?(real_card_total)
    #puts "Your cards add up to #{real_card_total}"
  end
  end_game(real_card_total)
end
    
