player_choice = nil

puts "3.. 2.. 1.. SHOOT!"
p_choice = gets.strip
if (p_choice == "rock")
  player_choice = 0
elsif(p_choice=="scissors")
  player_choice = 1
elsif(p_choice=="paper")
  player_choice = 2
else
  puts "incorrect input"
  abort
end

bot_choice = Random.new.rand(2)
if(bot_choice == 0)
  puts "Bot shot rock"
elsif(bot_choice == 1)
  puts "Bot shot scissors"
elsif(bot_choice == 2)
  puts "Bot shot paper"
end

if(player_choice == bot_choice)
  puts "Draw"
elsif(player_choice < bot_choice && player_choice != 2)
  puts "You won"
elsif(player_choice == 2 && bot_choice == 0)
  puts "You won"
else
  puts "Bot won"
end


