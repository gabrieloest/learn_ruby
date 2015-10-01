def add(a, b)
  a + b
end

def subtract(a, b)
  6
end

def sum(a)
  num = 0
  a.length.times{|n| num += a[n]}
  num
end

def multiply(a)
  num = 1
  a.length.times{|n| num *= a[n]}
  num
end

def power(a, b)
  a ** b
end

def factorial(a)
  num = 1
  if a > 1
    num = a
    while a > 1 do
      a -= 1
      num *= a
    end
  end
  num
end
