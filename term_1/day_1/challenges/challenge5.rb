hour = Time.now.hour

shows = 
["Game of Thrones", 
"Grey's Anatomy", 
"The Walking Dead",
"Supernatural",
"Doctor Who",
"This Is Us",
"True Detective",
"Billions",
"Vikings",
"Riverdale",
"Stranger Things",
"Gotham"]

puts "Currently showing: #{shows[hour / 2]}"