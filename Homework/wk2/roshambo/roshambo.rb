class Roshambo

PLAYS = {
  :rock     => {:rock => :draw, :paper => :paper, :scissors => :rock},
  :paper    => {:rock => :paper, :paper => :draw, :scissors => :scissors},
  :scissors => {:rock => :rock, :paper => :scissors, :scissors => :draw}
}



  def initialize(plays2)
  @plays = plays
  end

  def play(p1, p2)
    @plays[p1][p2]
  end
end


class Roshambo_lizard_spock < Roshambo
PLAYS2 = {
  :lizard => {:rock => :rock, :scissors => :scissors, :spock => :lizard,
            :lizard => :draw, :paper => :lizard},
  :spock  => {:lizard => :lizard, :paper => :paper, :spock => :draw,
            :rock => :spock, :scissors => :spock },
  :rock   => {:lizard => :rock, :spock => :spock},
  :paper  => {:lizard => :lizard, :spock => :paper},
  :scissors => {:lizard => :scissors, :spock => :spock}
}

  PLAYS.merge!(PLAYS2)

  def initialize(plays2)
    @plays2 = plays2
  end

  def play(p1, p2)
    @plays2[p1][p2]
  end
end

class Nerdshambo < Roshambo

end
