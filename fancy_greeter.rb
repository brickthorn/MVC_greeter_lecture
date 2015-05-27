class View
  # def set_display(mode)
  #   @mode = mode
  # end

  def welcome
    puts "Welcome to the Greetinator"
  end

  def get_name
    print "Enter in your name: "
    gets.chomp
  end

  def familiar_greeting(name)
    puts "Hello #{name}. I've heard that name before."
  end

  def unfamiliar_greeting(name)
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

class GreeterController

  def initialize
    @view = View.new
    @file = FileInterface.new("normal_names.txt")
    @normal_names = @file.parse_names
  end

  def run
    @view.welcome
    @name = @view.get_name
    if @normal_names.include?(@name.capitalize + "\n")
      @view.familiar_greeting(@name)
    else
      @view.unfamiliar_greeting(@name)
      @file.write_name(@name.capitalize + "\n")
    end
  end

end

greetinator = GreeterController.new
greetinator.run

