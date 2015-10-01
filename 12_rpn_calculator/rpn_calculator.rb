class RPNCalculator

  attr_accessor :numbers, :result

  def initialize
    @numbers = []
    @result = 0
  end

  def push(a)
    @numbers.push(a)
  end

  def plus
    raise 'calculator is empty' if @numbers.empty?

    size = @numbers.length
    @result = @numbers[size - 2] + @numbers[size - 1]

    @numbers.pop
    @numbers.pop
    @numbers.push(@result)
  end

  def value
    @result
  end

  def minus
    raise 'calculator is empty' if @numbers.empty?

    size = @numbers.length
    @result = @numbers[size - 2] - @numbers[size - 1]

    @numbers.pop
    @numbers.pop
    @numbers.push(@result)
  end

  def divide
    raise 'calculator is empty' if @numbers.empty?

    size = @numbers.length
    @result = @numbers[size - 2].to_f / @numbers[size - 1].to_f

    @numbers.pop
    @numbers.pop
    @numbers.push(@result)
  end

  def times
    raise 'calculator is empty' if @numbers.empty?

    size = @numbers.length
    @result = @numbers[size - 2] * @numbers[size - 1]

    @numbers.pop
    @numbers.pop
    @numbers.push(@result)
  end

  def tokens(a)
    num = []

    a.split.each do |n|
      if n.to_i != 0
        num.push(n.to_i)
      else
        num.push(n.to_sym)
      end
    end

    num
  end

  def evaluate(a)

  end
end
