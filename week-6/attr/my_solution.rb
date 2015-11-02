#Attr Methods

# I worked on this challenge [by myself]

# I spent [#] hours on this challenge.

class NameData
  attr_reader :name

  def initialize
    @name = 'Michael'
  end
end

class Greetings
  def initialize
    @namedata = NameData.new
  end

  def hello
    puts "Hello #{@namedata.name}! What a glorious day for coding!"
  end

end

greeting = Greetings.new
greeting.hello


# Reflection
=begin
R1:
What are these methods doing?
-They are displaying or modifying the name, age, and occupation in a profile.
How are they modifying or returning the value of instance variables?
-They are setting the instance variables to new values, and then returning them.

R2:
What changed between the last release and this release?
-The method what_is_age has been removed, and :age has been set as an attr_reader.
What was replaced?
-see above
Is this code simpler than the last?
-slightly

R3:
What changed between the last release and this release?
-This time, the age variable has also been set as an attr_accessor
What was replaced?
-The method change_my_age is no longer needed.
Is this code simpler than the last?
-yes, by another increment; the method to read or change age is now build in.

Final reflection:
What is a reader method?
-It is a way to add an instance variable to a class that may be read, but not changed.

What is a writer method?
-It is a way to add an instance variable to a class that may be changed, but not read.

What do the attr methods do for you?
  -They cleaning up the code, by compressing the method definitions to read or write instance variables in a class.

Should you always use an accessor to cover your bases? Why or why not?
-Yes, as long as you actually want either the read or write access on that particular variable.

What is confusing to you about these methods?
-It's tough to maintain that line of information flow between variables in classes. Diagrams help in my case.


=end
