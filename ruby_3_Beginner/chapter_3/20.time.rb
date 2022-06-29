puts Time.now

puts Time.now - 10
puts Time.now + 864000

puts ''
puts 'manipulated time'

class Integer
  def seconds
    self
  end

  def minutes
    self * 60
  end

  def hours
    self * 60 * 60
  end

  def days
    self * 60 * 60 * 24
  end

end

puts Time.now
puts Time.now + 10.minutes
puts Time.now + 16.hours
puts Time.now - 7.days

puts ''
puts 'Create Time objects'

year = 2022
month = 1
day = 16
hour = 12
min = 57
sec = 10
msec = 32

puts Time.local(year, month, day, hour, min, sec, msec)
puts Time.gm(year, month, day, hour, min, sec, msec)
puts Time.utc(year, month, day, hour, min, sec, msec)
puts Time.gm(2022, 02).to_i

puts ''
puts 'Store Time'
epoch_time = Time.gm(2022, 2).to_i
t = Time.at(epoch_time)
puts t.year, t.month, t.day
