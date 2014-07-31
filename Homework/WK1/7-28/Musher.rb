class Musher
  def initialize(sep)
    @sep = sep
  end
  def mush(das_array)
    das_array.join(" " + @sep + " ")
  end
end
