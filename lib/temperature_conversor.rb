# frozen_string_literal: true

# Temperature
class Temperature
  attr_reader :value

  def initialize(value)
    @value = value.round(2)
  end

  def inspect
    @value
  end
end

# Kelvin
class Kelvin < Temperature
  def inspect
    "#{@value} K"
  end

  def to_celsius
    Celsius.new(@value - 273.15)
  end

  def to_fahrenheit
    Fahrenheit.new((@value - 273.15) * 1.8 + 32)
  end

  def to_kelvin
    self
  end
end

# Fahrenheit
class Fahrenheit < Temperature
  def inspect
    "#{@value} °F"
  end

  def to_celsius
    Celsius.new((@value - 32) * 5.0 / 9.0)
  end

  def to_kelvin
    Kelvin.new((@value - 32) * 5.0 / 9.0 + 273.15)
  end

  def to_fahrenheit
    self
  end
end

# Celsius
class Celsius < Temperature
  def inspect
    "#{@value} °C"
  end

  def to_kelvin
    Kelvin.new(@value + 273.15)
  end

  def to_fahrenheit
    Fahrenheit.new(@value * 1.8 + 32)
  end

  def to_celsius
    self
  end
end