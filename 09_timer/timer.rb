class Timer

  def initialize
    @time = 0
  end

  def seconds
    @time
  end

  def seconds=(time)
    @time = time
  end

  def time_string
    seconds = 0
    minutes = 0
    hours = 0

    if @time >= 60
      seconds = @time % 60
      minutes = @time / 60

      if minutes >= 60
        hours = minutes / 60
        minutes = minutes % 60
      end
    else
      seconds = @time
    end

    seconds = seconds.to_s
    minutes = minutes.to_s
    hours = hours.to_s

    seconds = "0#{seconds}" if seconds.length <= 1
    minutes = "0#{minutes}" if minutes.length <= 1
    hours = "0#{hours}" if hours.length <= 1

    "#{hours}:#{minutes}:#{seconds}"
  end
end
