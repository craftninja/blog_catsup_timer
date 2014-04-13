welcome_message = "Welcome to the Catsup Timer. How many minutes "
welcome_message += "would you like me to set for you?"
puts welcome_message
system(%Q{say -v "Vick" #{welcome_message}})
minutes = gets.chomp.to_i

start_time = Time.now
seconds = minutes * 60
end_time = start_time + seconds

while Time.now < end_time
  sleep 1
end

puts "Your tomato has exploded. Time is up."
system(%Q{say -v "Vick" "Your tomato has exploded. Time is up."})
