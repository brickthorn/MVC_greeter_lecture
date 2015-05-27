puts "Welcome to the Greetinator"

print "Enter in your name: "
name = gets.chomp

normal_names = File.readlines("normal_names.txt")

if normal_names.include?(name.capitalize + "\n")
  puts "Hello #{name}"
else
  puts "#{name}?!?  Is that your real name?!?"
  File.open("normal_names.txt", "a") { |f| f.write(name.capitalize + "\n") }
  puts "We won't forget it!"
end

