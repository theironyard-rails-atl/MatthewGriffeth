# Preferably something with better answers ...
Questions = [
  {#hash 1
     question: "Why did the chicken cross the road?",
     choices: [
       "Why does anyone do anything?",
       "To get to the other side",
       "Something something something DARK SIDE!",
       "Mu"
     ],
     answer: 1
  },
  {#hash 2
    question: "WHAT?!",
    choices: [
      "THAT THING",
       "THE OTHER ONE",
        "42",
        "THE HELL?!?!"
    ],
  answer: 2
  },
    {#hash 3
      question: "Harvey Dent...Can he be trusted?",
    choices: [
      "yes",
       "no",
       "Go home Batman,you're drunk.",
       "darn tootin"
      ],
    answer: 3
    },
    {#hash 4
      question: "would you like fries with that?",
      choices: [
        "duh",
         "nope",
         "your mom wants fries",
         "chips please"
        ],
      answer: 2
      },
  {#hash 5
    question: "who would you like to fight?",
    choices:[
      "Ghandi",
      "THE POWER!",
       "yer mom",
       "Bob",
      "bad grammar"
    ],
  answer: 1}
]


score = 0

questions_list = Questions
 questions_list.each do |the_current_question|
  puts the_current_question[:question]
  puts the_current_question[:choices]
  user_input = gets.chomp
  puts "You typed in '#{user_input}'"

  index_of_correct_answer = the_current_question[:answer]
  correct_answer = the_current_question[:choices][index_of_correct_answer]

  if user_input.downcase == correct_answer.downcase
    puts "You got it correct"
    score = score + 1 # or score += 1
  else
    puts "You got it incorrect"
    puts "The correct answer was #{correct_answer}"
  end
end

puts "Total is: #{score}"
