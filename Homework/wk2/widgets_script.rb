require "./widgets.rb"


inv = Widgets.new(INVENTORY)

puts "Your highest price was #{inv.max_price}."
puts
puts "Your lowest price was #{inv.min_price}."
puts
puts "Your total revenue generated was #{inv.revenue_total.round(2)}."
puts
puts "After cost is calculated your total profit is #{inv.profit_total.round(2)}."
puts
puts "Your top ten items sold are as follows...#{inv.top_ten}."
puts
puts "Your number of units sold per department are as follows...#{inv.sold_by_department}."
