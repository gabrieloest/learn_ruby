def reverser
  yield.split.map { |e| e.reverse}.join(' ')
end

def adder(a = 1)
  yield + a
end

def repeater(a = 1)
  a.times do
    yield
  end
end
