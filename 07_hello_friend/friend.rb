class Friend
  def greeting(a="")
    return 'Hello!' if a.empty?

    "Hello, #{a}!"
  end
end
