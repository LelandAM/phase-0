#Attr Methods

# I worked on this challenge myself

# I spent [2] hours on this challenge.

# Pseudocode

# Input: Name
# Output: a preset greeting featuring input name
# Steps: define NameData class
# set attribute to accessor for read/write ability.
# define method to get name and set to instance variable
# define Greetings class
# set so user input (NameData) overwrites @name instance variable and returns message to user with updated name.


class NameData
  attr_accessor :name

  def initialize(name)
    @name = name
   end
end


class Greetings
  def initialize(insert_name)
    @insert_name = NameData.new(insert_name)
  end

  def hello
    puts 'Hello #{@insert_name}! How wonderful to see you today.'
  end
end


greet = Greetings.new("Student")
p greet.hello










# Reflection
# Release 1:
# What are these methods doing? This class is initialized with set instance variables and a suite of methods that change those variable when called and given new arguments.
# How are they modifying or returning the value of instance variables? Calling the "what_is" methods displays the instance variables as they are and calling the change_my_name methods updates the instance variables with the argument as their new data.

# Release 2:
# What changed between the last release and this release?
# What was replaced? the 'what_is_age' method was commented out and "attr_reader :age" was added to the Profile class, but the results were still the same.
# Is this code simpler than the last?
#    Yes, a part that was unnecessary has been removed.

# Release 3:
# What changed between the last release and this release?
# What was replaced? The 'change_my_age' method was removed and 'attr_writer :age' was added to the Profile
# Is this code simpler than the last?
#   Yes even simpler, with the writer attribute added you can update the age variable without needing a specific method to change it.

# Release 6:
# What is a reader method? A Reader method returns values but does not offer editing capability
# What is a writer method? A writer method lets you change values but doesnt print anything, if you want to do both you need an accessor method
# What do the attr methods do for you? the Attribute methods let you read, write, or read and write from outside the class the variables and methods exist in.
# Should you always use an accessor to cover your bases? Why or why not? No for security reasons you don't always want your valueables to be accessed or edited ouside the class.
# What is confusing to you about these methods? To me the methods make sense I just need to get used to the structure required to call them into being because I'm a visual learner I will write it out in my notebook and that will help.
