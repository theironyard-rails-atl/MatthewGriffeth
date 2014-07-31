  def randomread
  File.readlines("./poem.txt").to_a.sample
end
