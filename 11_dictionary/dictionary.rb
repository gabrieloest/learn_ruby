class Dictionary

  def initialize
    @words = {}
  end

  def entries
    @words
  end

  def add(ent={})
    return @words = {ent => nil} if ent.is_a? String
    @words.merge!(ent)
  end

  def keywords
    @words.keys.sort
  end

  def include?(a)
    @words.has_key?(a)
  end

  def find(a)
    if @words.has_key?(a)
      return @words
    elsif
      @words.delete_if{|key, value| !key.include?(a)}
    end
    @words
  end

  def printable
    str = []
    @words.each do |key, value|
      str.push("[#{key}] \"#{value}\"")
    end

    str.sort!.join("\n")

  end
end
