
module View

  def self.welcome
    puts "Welcome to the Greetinator"
  end

  def self.get_name
    print "Enter in your name: "
    gets.chomp
  end

  def self.familiar_greeting(name)
    puts "Hello #{name}. I've heard that name before."
  end

  def self.unfamiliar_greeting(name)
    puts "#{name}?!?  Is that your real name?!?"
    puts "We won't forget it!"
  end

end


View.welcome
name = View.get_name

normal_names = File.readlines("normal_names.txt")

if normal_names.include?(name.capitalize + "\n")
  View.familiar_greeting(name)
else
  View.unfamiliar_greeting(name)
  File.open("normal_names.txt", "a") { |f| f.write(name.capitalize + "\n") }
end

