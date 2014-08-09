require './widgets.rb'

new = Widget.new

puts "the max price is #{new.max_price[:price]} from #{new.max_price[:name]}}"

puts "\n"

puts "the min price is #{new.min_price[:price]} from #{new.min_price[:name]}}"

puts "\n"

puts "the total revenue is #{new.revenue_total.round(2)}"

puts "\n"

puts "the total profit is #{new.profit_total.round(2)}"

puts "\n"

puts "the ten best sellers are #{new.top_ten}"

puts "\n"

puts "the number sold by departments are #{new.sold_by_department}"
