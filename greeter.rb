puts "Welcome to the Greetinator"

print "Enter in your name: "
name = gets.chomp

greeting = File.readlines("greetings.txt").sample.chomp
puts "#{greeting} #{name}"


