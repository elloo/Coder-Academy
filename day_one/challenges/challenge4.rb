t = Time.now

if 11 <= t.hour && t.hour <= 16
  puts "Good afternoon! The time is#{t.strftime('%l:%M %p')}"
elsif 17 <= t.hour && t.hour <= 22
  puts "Good evening! The time is#{t.strftime('%l:%M %p')}"
elsif 23 <= t.hour && t.hour <= 4
  puts "Good night! The time is#{t.strftime('%l:%M %p')}"
elsif 5 <= t.hour && t.hour <= 10
  puts "Good morning! The time is#{t.strftime('%l:%M %p')}"
end