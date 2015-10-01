def echo(a)
  a
end

def shout(a)
  a.upcase()
end

def repeat(a, b = 2)
  str = "#{a} " * b
  str.rstrip
end

def start_of_word(a, b)
  a[0,b]
end

def first_word(a)
  a.split[0]
end

def titleize(a)
  ex = ['and', 'over', 'the']

  str = a.split.map{|n| ex.include?(n) ? n.downcase : n.capitalize }.join(' ')

  strsplit = str.split

  strsplit[0].capitalize!

  str = strsplit.join(' ')

  str

end
