class Clock
  attr_accessor :time

  def initialize(hour: 0, minute: 0)
    minute_hour = (minute/60).floor
    @time = [format_hour(hour + minute_hour), format_minute(minute)]
  end

  def to_s
    @time.join(':')
  end

  def +(clock)
    time_args = {
      hour: @time[0].to_i + clock.time[0].to_i, 
      minute: @time[1].to_i + clock.time[1].to_i
    }

    Clock.new(**time_args)
  end

  def ==(clock)
    self.to_s == clock.to_s
  end

  def -(clock)
    time_args = {
      hour: @time[0].to_i - clock.time[0].to_i, 
      minute: @time[1].to_i - clock.time[1].to_i
    }

    Clock.new(**time_args)
  end

  private

  def format_hour(hour)
    return '%02d'%hour if hour < 24 && hour >= 0
    return '00' if hour == 24
    hour < 0 ? format_hour(hour + 24) : format_hour(hour - 24)
  end

  def format_minute(minute)
    return '%02d'%minute if minute < 60 && minute >= 0
    minute < 0 ? format_minute(minute % 60) : format_minute(minute % 60)
  end
end
