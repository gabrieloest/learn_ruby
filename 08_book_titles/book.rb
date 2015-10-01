class Book

  def title=(title)
    @title = title
  end

  def title

    ex = ['and', 'over', 'the', 'in', 'of', 'a', 'an']

    str = @title.split.map{|n| ex.include?(n) ? n.downcase : n.capitalize }.join(' ')

    strsplit = str.split

    strsplit[0].capitalize!

    @title = strsplit.join(' ')

  end
end
