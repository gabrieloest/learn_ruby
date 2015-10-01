def ftoc(temperature)
  celcius = (temperature - 32) / 1.8
  celcius.round()
end

def ctof(temperature)
  (temperature * 1.8) + 32
end
