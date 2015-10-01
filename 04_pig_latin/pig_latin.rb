def translate(a)
  vowels = ['a', 'e', 'i', 'o', 'u']

  div = a.split

  return "#{a}ay" if vowels.include?(a[0]) && div.length <= 1

  r = ''

  div.each do |n|
    b = n.split(//)

    while !vowels.include?(b[0])

      if b[0..1].join == 'qu'
        b.rotate!(2)
      elsif b[0..2].join == 'sch'
        b.rotate!(3)
      else
        b.rotate!
      end
    end

    b = b.join + 'ay'


    r += b + ' '
  end

  r.rstrip
end

translate('quite')
