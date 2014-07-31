require "./survey"
require "minitest/autorun"

describe(Survey) do

before do
  survey = Survey.new
end
after do
  survey.destroy!
end
  it "isn't finished when it starts."

  it "asks questions"
    Survey.ask_question
  end

  it "displays a list of possible choices"

  it "collects answers"

  it "calculates average"

  it "displays statitics (mix, max, ave) upon completion"
end
