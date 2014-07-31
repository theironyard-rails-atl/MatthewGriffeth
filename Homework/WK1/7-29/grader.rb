
    $score = []
    $students = []

  def grade(score)
  if (score >= 90)
    puts"A"
    return"A"
  elseif ((score >=80 )&&(score < 90))
    puts "B"
    return"B"
  elseif ((score >= 71) && (score<= 79))
    puts "C"
    return"C"
  elseif (score = 70)
    puts "D"
    return "D"
  elseif (score <= 69)
    puts "F"
    return"F"
  end
end

def create_scores(num)
  $student_scores = num.times.map { Random.rand(100) }
end

def compute_grades
  $student_grades.clear
  $student_scores.each { |score| $student_grades << grade(score) }
end

def count_letter_grade(letter)
  $student_grades.count(letter.capitalize)
end
end
