class Roshambo

$PLAYS = {
  :rock     => {:rock => :draw, :paper => :paper, :scissors => :rock},
  :paper    => {:rock => :paper, :paper => :draw, :scissors => :scissors},
  :scissors => {:rock => :rock, :paper => :scissors, :scissors => :draw}
}

attr_accessor = :plays

  def initialize(plays)
  @plays = plays
  end

  def play(p1, p2)
    @plays[p1][p2]
  end
end


class Roshambo_lizard_spock < Roshambo

plays2 = {
  :lizard => {:rock => :rock, :scissors => :scissors, :spock => :lizard,
            :lizard => :draw, :paper => :lizard},
  :spock  => {:lizard => :lizard, :paper => :paper, :spock => :draw,
            :rock => :spock, :scissors => :spock },
  :rock   => {:lizard => :rock, :spock => :spock},
  :paper  => {:lizard => :lizard, :spock => :paper},
  :scissors => {:lizard => :scissors, :spock => :spock}
}
    $PLAYS.merge!(plays2)



end

class Godmode < Roshambo
plays3 ={
  :god => {:rock => :god, :paper => :god, :scissors => :god, :lizard => :god,
  :spock =>:god },
  :rock => {:god => :god},
  :paper => {:god => :god},
  :scisors => {:god => :god},
  :lizard => {:god => :god},
  :spock => {:god =>:spock}
}
$PLAYS.merge!(plays3)

end
