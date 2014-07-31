questions = [
  {:question =>"i like codes"},
  {:question => "i like coffee"},
  {:question => "i like computers"},
  {:question => "i like numbers"},
  {:question => "i like comics"} ]
  @answers = Array.new

def stats(max,min)
  puts" your max was #{max} and your min was #{min},and your average was #{average}."
end

questions.each do |current_question|
  puts current_question[:question]
  print "on a scale of 1-5 how much do you agree?"
  user_input = gets.chomp.to_i
  puts " You entered #{user_input}."

  @answers << user_input
end
  def max
     @answers.max
   end

  def min
    @answers.min
  end

def average
  #total / amount of num
  total = 0.0
  @answers.each { |x| total += x }
  total / @answers.length
end
