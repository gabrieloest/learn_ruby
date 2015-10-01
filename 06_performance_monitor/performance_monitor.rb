def measure(a = 1)
  start = Time.now
  a.times do
    yield
  end
  finish = Time.now

  (finish - start) / a
end
