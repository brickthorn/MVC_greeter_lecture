
# if the first letter of the name is equal to the first letter of the greeting
#     - sample one of those greetings
# else
#     - use any greeting

greetings = File.readlines("greetings.txt")
if greetings.select { |greeting| greeting[0] == name[0] }.sample.chomp
