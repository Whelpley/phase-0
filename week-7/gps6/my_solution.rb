# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# Require_relative checks the same folder (or a specified folder from the file), while require checks a specified file path in the Ruby library.
#
require_relative 'state_data'


class VirusPredictor

# This takes three arguments and sets three instance variables to those inputs.
  def initialize(state_of_origin)
  @state = state_of_origin
  @population = STATE_DATA[state_of_origin][:population]
  @population_density = STATE_DATA[state_of_origin][:population_density]
  end

# This takes no arguments, and returns the results of the two private methods below
  def virus_effects
  predicted_deaths
  speed_of_spread
  end

 # def report
 # STATE_DATA.each do |state,info|
 # print "In #{state} there will be #{}"

private

# Takes three arguments, calculates a number of deaths, returns a string.
  def predicted_deaths
  # predicted deaths is solely based on population density
  case @population_density
  when (0...50)
  @deaths = 0.05
  when (50...100)
  @deaths = 0.1
  when (100...150)
  @deaths = 0.2
  when (150...50000)
  @deaths = 0.3
  else
  @deaths = 0.4
  end
  number_of_deaths = (@population * @deaths).floor
  print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

# Takes two arguments, calculates a number of months (with a poorly named variable), returns a string.
  def speed_of_spread #in months
  # We are still perfecting our formula here. The speed is also affected
  # by additional factors we haven't added into this functionality.
  speed = 0.0

  case @population_density
  when (150...50000)
  speed += 0.5
  when (100...150)
  speed += 1
  when (50...100)
  speed += 1.5
  when (0...50)
  speed += 2
else
  speed += 2.5
  end

  puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#========================================
#========================================
# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do |state, info|
  VirusPredictor.new(state).virus_effects
end
# alabama = VirusPredictor.new("Alabama")
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey")
# jersey.virus_effects

# california = VirusPredictor.new("California")
# california.virus_effects

# alaska = VirusPredictor.new("Alaska")
# alaska.virus_effects


#=======================================================================
# Reflection Section

=begin

What are the differences between the two different hash syntaxes shown in the state_data file?

At the first level, the strings of the state names are the key; the next level down the symbols are keys.

What does require_relative do? How is it different from require?

It is a subset of the require command, which indicates a file that is needed to run this code in question. While "require" refers to the Ruby library, "require_relative" needs a file in the same folder or a specificed one relative to the code in question.

What are some ways to iterate through a hash?

The most basic iteration is with #each, like this:
hash.each {|key, value| DO CODE STUFF ON the key and value}

When refactoring virus_effects, what stood out to you about the variables, if anything?

-The methods did not require all the argument calls when the instance variables are already accessible, so we cut them out.
-"speed" is a poorly named variable for a factor that indicates how slowly the virus spreads.

What concept did you most solidify in this challenge?

-The scope of variables, and how you can access them in different points in the program.

=end
