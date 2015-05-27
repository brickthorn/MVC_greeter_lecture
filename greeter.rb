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

class FileInterface

  def initialize(filename)
    @filename = filename
  end

  def parse_names
    File.readlines(@filename)
  end

  def write_name(name)
    File.open(@filename, "a") { |f| f.write name }
  end

end

View.welcome
name = View.get_name
file = FileInterface.new("normal_names.txt")

normal_names = file.parse_names

if normal_names.include?(name.capitalize + "\n")
  View.familiar_greeting(name)
else
  View.unfamiliar_greeting(name)
  file.write_name(name.capitalize + "\n")
end

