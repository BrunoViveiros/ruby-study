# frozen_string_literal: true

# JokenpoMove
class JokenpoMove
  def wins_against?(opponent); end

  def draw?(opponent)
    opponent == self.class
  end
end

# Rock
class Rock < JokenpoMove
  def wins_against?(opponent)
    opponent == Scissors
  end
end

# Scissors
class Scissors < JokenpoMove
  def wins_against?(opponent)
    opponent == Paper
  end
end

# Paper
class Paper < JokenpoMove
  def wins_against?(opponent)
    opponent == Rock
  end
end

# JokenpoGame
class JokenpoGame
  def initialize(move1, move2)
    @move1 = move1
    @move2 = move2
  end

  def result
    return p "#{@move1.new.class} draws against #{@move2.new.class}" if @move1.new.draw?(@move2)
    return p "#{@move1.new.class} wins against #{@move2.new.class}" if @move1.new.wins_against?(@move2)

    p "#{@move1.new.class} loses against #{@move2.new.class}"
  end
end

JokenpoGame.new(Rock, Scissors).result
JokenpoGame.new(Rock, Rock).result
JokenpoGame.new(Rock, Paper).result
