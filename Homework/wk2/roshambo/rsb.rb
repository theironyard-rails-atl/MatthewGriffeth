require "./roshambo"


puts"LET'S GET READY TO RO!...SHAM!...BO!"
puts "ARE YOU A TRADITIONALIST?(y/n)"
answer = gets.chomp.downcase

if answer =="y"
  game = Roshambo.new($PLAYS)
elsif answer == "n"
  puts "LIZARD AND SPOCK HAVE JOINED THE GAME!!!"
  puts "NO I CAN'T LOWER MY VOICE THIS IS HOW I TALK!"
  game = Roshambo_lizard_spock.new($PLAYS)
else
  puts "ENGLISH M$%#@% F&^%#@! DO YOU SPEAK IT?"
end
