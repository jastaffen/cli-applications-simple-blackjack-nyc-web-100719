require 'pry'

def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
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
  sum = 0
  2.times {| | sum += deal_card }
  display_card_total(sum)
  sum
end

def invalid_command
  puts 'Please enter a valid command'
end

def hit?(total)
  prompt_user
  user_input = get_user_input
  while user_input !='s' && user_input !='h'
    invalid_command
    prompt_user
    user_input = get_user_input
  end
  if user_input == 's'
    total
  elsif user_input == 'h'
    total += deal_card
  end
end



#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  # binding.pry
  total = initial_round
  until total > 21 do
    total = hit?(total)
    display_card_total(total)
  end
  end_game(total)
end
  # if user_input == 's'
  #   display_card_total(total)
  # else
  #   until total > 21 do
  #     total += hit?(total)
  #     display_card_total(total)
  #   end
  # end
  # end_game(total)
