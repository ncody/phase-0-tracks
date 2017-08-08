# Virus Predictor
# ruby my_solutions.rb
# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.
# EXPLANATION OF require_relative
# Require relative allows you to access the desired file without providing a file path ONLY if the desired file is in the same directory.
#
#
require_relative 'state_data'
class VirusPredictor
  attr_reader :population_density, :population, :state
  # Creates new instance of the class with origin density and population as arguments.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
  # Calls two methods deaths and sos that access instance variables of pop density pop and state.
  def virus_effects
    predicted_deaths
    speed_of_spread
  end
  # No access to these methods
  private
  # Method with conditional that predicts deaths based on states population and population density - if answer is a float .floor rounds down to the nearest whole number
  def predicted_deaths
    # predicted deaths is solely based on population density
=begin
    if population_density >= 200
      number_of_deaths = (population * 0.4).floor
    elsif population_density >= 150
      number_of_deaths = (population * 0.3).floor
    elsif population_density >= 100
      number_of_deaths = (population * 0.2).floor
    elsif population_density >= 50
      number_of_deaths = (population * 0.1).floor
    else
      number_of_deaths = (population * 0.05).floor
    end
=end
    when population_density >= 200 then number_of_deaths = (population * 0.4).floor
    when population_density >= 150 then number_of_deaths = (population * 0.3).floor
    when population_density >= 100 then number_of_deaths = (population * 0.2).floor
    when population_density >= 50 then number_of_deaths = (population * 0.1).floor
    when population_density < 50 then number_of_deaths = (population * 0.05).floor
  end
    print "#{state} will lose #{number_of_deaths} people in this outbreak"
  end
  # Method that takes pop desntiy and state as arguemnts to determine how quickly spread will occur
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0
=begin
    if population_density >= 200
      speed += 0.5
    elsif population_density >= 150
      speed += 1
    elsif population_density >= 100
      speed += 1.5
    elsif population_density >= 50
      speed += 2
    else
      speed += 2.5
    end
=end
      when population_density >= 200 then speed += 0.5
      when population_density >= 150 then speed += 1
      when population_density >= 100 then speed += 1.5
      when population_density >= 50 then speed += 2
      when population_density < 50 then speed += 2.5
    end
    puts " and will spread across the state in #{speed} months.\n\n"
  end
end
#=======================================================================
# DRIVER CODE
 # initialize VirusPredictor for each state
alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects
jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects
california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects
alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects
#STATE_DATA.each do.|state, pop_info|
#  puts "#{state} --- #{pop_info}"
STATE_DATA.each do |state, pop_info|
  puts all_states = VirusPredictor.new(state, pop_info[:population_density], pop_info[:population])
  all_states.virus_effects
end
#=======================================================================
# Reflection Section
#1. the hash syntaxes are creating with a string and a symbol
#2. require relative needs a relative path to find the document, require needs an absolute path. so if the files are in the same directory you just need to list the file with no path for require relative
#3.You can iterate through a hash using .each or .map
#4. the variables were instance variables taken at initialize, not the arguments given in the method
#5.I solidified iterating through a hash