class Temperature

  def initialize(a)
    @temps = a
  end

  def self.from_celsius(a)
    self.new(:c => a)
  end

  def self.from_fahrenheit(a)
    self.new(:f => a)
  end

  def in_fahrenheit
    return @temps[:f] if @temps[:f]
    fahrenheit = (@temps[:c] * 1.8) + 32
    fahrenheit
  end

  def in_celsius
    return @temps[:c] if @temps[:c]
    celsius = (@temps[:f] - 32)/1.8
    celsius.round
  end

end

class Celsius < Temperature
  def initialize(a)
    @temps = {:c => a}
  end
end

class Fahrenheit < Temperature
  def initialize(a)
    @temps = {:f => a}
  end
end
