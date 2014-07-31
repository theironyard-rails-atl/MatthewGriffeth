the_question = {
  question: "why did the chicken cross the road?",
  choices: [
    "first wrong choice",
    "correct choice",
    "third but wrong choice",
    "fourth and still wrong choice"
  ],
  answer: 1
}

the_other_question = {
  question: "Whats up yo?",
  choices: [
    "not much",
    "all the things",
    "yo mamma" ],
  answer: 2

}



all_the_questions = [the_question, the_other_question]

score = 0
index_of_correct_answer = current_question[:answer]
correct_answer = current_question[:choices][indexof_current_answer]

all_the_questions.each do |current_question|
puts current_question[:question]
puts current_question[:choices]

user_input = gets.upcase




puts " You typed in #{user_input}."
