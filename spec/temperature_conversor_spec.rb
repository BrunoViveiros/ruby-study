# frozen_string_literal: true

require 'simplecov'

SimpleCov.start

require 'temperature_conversor'

describe Temperature do
  describe '#value' do
    it 'returns a value rounded by 2' do
      temperature = Temperature.new(10.12345).value
      expect(temperature).to eq(10.12)
    end
  end
end

describe Kelvin do
  describe '#inspect' do
    it 'returns a formatted value in kelvin' do
      value = Kelvin.new(10).inspect
      expect(value).to eq('10 K')
    end
  end
  describe '#to_celsius' do
    it 'converts a kelvin temperature to celsius' do
      temperature = Kelvin.new(10).to_celsius
      expect(temperature).to be_a Celsius
      expect(temperature.value).to eq(-263.15)
    end
  end
  describe '#to_fahrenheit' do
    it 'converts a kelvin temperature to fahrenheit' do
      temperature = Kelvin.new(10).to_fahrenheit
      expect(temperature).to be_a Fahrenheit
      expect(temperature.value).to eq(-441.67)
    end
  end
  describe '#to_kelvin' do
    it 'returns a kelvin temperature' do
      temperature = Kelvin.new(10).to_kelvin
      expect(temperature).to be_a Kelvin
      expect(temperature.value).to eq(10)
    end
  end
end

describe Fahrenheit do
  describe '#inspect' do
    it 'returns a formatted value in fahrenheit' do
      value = Fahrenheit.new(10).inspect
      expect(value).to eq('10 °F')
    end
  end
  describe '#to_celsius' do
    it 'converts a fahrenheit temperature to celsius' do
      temperature = Fahrenheit.new(10).to_celsius
      expect(temperature).to be_a Celsius
      expect(temperature.value).to eq(-12.22)
    end
  end
  describe '#to_fahrenheit' do
    it 'returns a fahrenheit temperature' do
      temperature = Fahrenheit.new(10).to_fahrenheit
      expect(temperature).to be_a Fahrenheit
      expect(temperature.value).to eq(10)
    end
  end
  describe '#to_kelvin' do
    it 'converts a fahrenheit temperature to kelvin' do
      temperature = Fahrenheit.new(10).to_kelvin
      expect(temperature).to be_a Kelvin
      expect(temperature.value).to eq(260.93)
    end
  end
end

describe Celsius do
  describe '#inspect' do
    it 'returns a formatted value in celsius' do
      value = Celsius.new(10).inspect
      expect(value).to eq('10 °C')
    end
  end
  describe '#to_celsius' do
    it 'returns a celsius temperature' do
      temperature = Celsius.new(10).to_celsius
      expect(temperature).to be_a Celsius
      expect(temperature.value).to eq(10)
    end
  end
  describe '#to_fahrenheit' do
    it 'converts a celsius temperature to fahrenheit' do
      temperature = Celsius.new(10).to_fahrenheit
      expect(temperature).to be_a Fahrenheit
      expect(temperature.value).to eq(50.0)
    end
  end
  describe '#to_kelvin' do
    it 'converts a celsius temperature to kelvin' do
      temperature = Celsius.new(10).to_kelvin
      expect(temperature).to be_a Kelvin
      expect(temperature.value).to eq(283.15)
    end
  end
end
