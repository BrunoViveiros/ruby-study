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

  def to_celsius
    self
  end

  def to_fahrenheit
    self
  end

  def to_kelvin
    self
  end
end

# Kelvin
class Kelvin < Temperature
  def inspect
    "#{super} K"
  end

  def to_celsius
    Celsius.new(@value - 273.15)
  end

  def to_fahrenheit
    Fahrenheit.new(to_celsius.value * (9.0 / 5.0) + 32)
  end
end

# Fahrenheit
class Fahrenheit < Temperature
  def inspect
    "#{super} °F"
  end

  def to_celsius
    Celsius.new((@value - 32) * 5.0 / 9.0)
  end

  def to_kelvin
    Kelvin.new(to_celsius.value + 273.15)
  end
end

# Celsius
class Celsius < Temperature
  def inspect
    "#{super} °C"
  end

  def to_kelvin
    Kelvin.new(@value + 273.15)
  end

  def to_fahrenheit
    Fahrenheit.new(@value * (9.0 / 5.0) + 32)
  end
end
