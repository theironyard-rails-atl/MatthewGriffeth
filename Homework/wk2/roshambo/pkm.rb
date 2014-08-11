module HP
  def fighting?
    self.hp > 0
  end

  def fainted?
    !fighting?
    puts "pokemon fainted..."
  end
end

module Revive
  def revive
    if fainted?
      @hp =10
    end
  end

  def critical_hit
    puts "Attack lands a critical hit"
    @hp = 0
  end
end


class Pokemon
  attr_reader :max_damage, :level
  attr_accessor :hp

  # This is a Mixin
  include HP

  # if conan = Adventurer.new
  # defines
  #   conan.alive?
  #   conan.dead?
  # ok because conan.hit_points works

  # `extend` hp

  # Adventurer.alive?
  # Adventurer.dead?
  # but Adventurer.hit_points won't work

  def initialize(level=1)
    @level = level

    @max_damage = @max_damage || 4
    # a += 1  --> a = a + 1
    # a ||= 1 --> a = a || 1
    # @hit_points_per_level = @hit_points_per_level || 10
    @hit_points_per_level ||= 10 # set a default

    @hit_points = @level * @hit_points_per_level
  end

  def damage
    rand(1..@max_damage)
  end

  def attack(other)
    # other.hit_points = other.hit_points - self.damage
    other.hp -= self.damage
  end
end


class Geodude < Pokemon
  def initialize(attack, level=1)
    @attack = attack
    @max_damage = (level*8)
    @hit_points_per_level = 15
    super(level)
  end

  def rock_slide(other)
    puts "Uses #{@attack}"
    num_attacks = (@level / 3) + 1
    num_attacks.times { self.attack(other) }
    # The other adventurer gets a free swing while your
    #   defenses are down
    other.attack(self) unless other.fainted?
  end
end


class Kadabra < Pokemon


  def initialize(level=1)
    @attack = attack
    @hit_points_per_level = 8
    @pp = pp
    super # or super(level)
  end

  def teleport
      puts "Kadabra teleported..."
      puts "Kadabra escaped..."
  end

  def psy_beam(other)
    if @pp < 5
      puts "pp too low"
      # Early return, doesn't execute anything else in this function
      return
    else
      @pp -= 5
    end

    # if rand(1..6) > 2
    #   hit = true
    # else
    #   hit = false
    # end
    hit = rand(1..20) > 5
    # or
    # max = (@level / 2) + 6 & rand(1..max)

    if hit
      puts "Target was hit with an intense beam of psychic energy!"
      other.hp -= rand(5..15)
    else
      puts "Attack misses!"
      other.hp
    end
  end
end


class Wild_pokemon
  attr_reader :level
  attr_accessor :hp

  include HP


  def initialize(level = 2)
    @level = level
    @hp = 0
    level.times { @hp += rand(1..8) }
  end

  def attack(other)
    roll = rand(1..6)
    damage = roll

    while roll == 6
      roll = rand(1..6)
      damage += roll
    end

    other.hp -= damage
  end
end
