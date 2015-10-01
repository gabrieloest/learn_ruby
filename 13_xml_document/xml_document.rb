class XmlDocument

  def hello(a="")
    return "<hello/>" if a.empty?

    "<hello name=#{a}/>"
  end
end
