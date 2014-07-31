questions =[
  {:question => "On a scale from 1-5 how much do you enjoy ruby?",
  :scale => [1,2,3,4,5]
  },
  {:question, => "On a scale from 1-5 how much do you enjoy javascript?",
  :scale => [1,2,3,4,5]
  },
  {:question => "On a scale from 1-5 how much do you enjoy python?"}
  :scale => [1,2,3,4,5]
  },
  {:question => "On a scale from 1-5 how much do you enjoy xcode?",
  scale: =>[1,2,3,4,5]}
  {:question => "On a scale from 1-5 how much do you enjoy c++?",
  :scale => [1,2,3,4,5]}
  ]

questions.each do |current_question|
  puts current_question[:question]
  user_input = gets.chomp
