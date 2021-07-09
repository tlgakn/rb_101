# \1000 Lights
# You have a bank of switches before you, numbered from 1 to n. 
# Each switch is connected to exactly one light that is initially off.         index
# You walk down the row of switches and toggle every one of them.           #1, 2, 3
# You go back to the beginning, and on this second pass, you toggle switches 2, 4, 6, and so on. 
# On the third pass, you go back again to the beginning and toggle switches  3, 6, 9, and so on. 
                                                                          #  4, 8,12
# You repeat this process and keep going until you have been through n repetitions.

# Write a method that takes one argument, the total number of switches, and returns an Array that identifies which lights are on after n repetitions.

# Example with n = 5 lights: 

# round 1: every light is turned on  -- [1,2,3,4,5] 
# round 2: lights 2 and 4 are now off; 1, 3, 5 are on [1,3,5]
# round 3: lights 2, 3, and 4 are now off; 1 and 5 are on [1,5] (3,6,9)
# round 4: lights 2 and 3 are now off; 1, 4, and 5 are on     (4,6,8..)
# round 5: lights 2, 3, and 5 are now off; 1 and 4 are on
# The result is that 2 lights are left on, lights 1 and 4. The return value is [1, 4].

# With 10 lights, 3 lights are left on: lights 1, 4, and 9. The return value is [1, 4, 9].

=begin

-output should return an array

algorithm
- define an empty array ligths_on to catch the ligths they are on in every iteration
- Initialize an array from 0 to n, with all of the values being "on", initialize to `lights`

Initialize `switch` to "on"

Iterate through a range of numbers from 2 to n.
  Check if the light number modulo the range number == 0
    If it is "on",
      reassign to "off"
    If it's "off"
      reassign to "on"
      
Delete the 0th light since it's an extra light

Return the array

=end

def create_lights(number)
  lights = Array.new(number + 1, "on")
end

# Rona's Solution
def lights_on_or_off(number)
  lights = create_lights(number)
  
  n = 2
  
  loop do
    lights.each_with_index do |light, index|
      if index % n == 0
        if lights[index] == "on"
          lights[index] = "off"
        elsif lights[index] == "off"
          lights[index] = "on"
        end
      end
    end
    n += 1
    break if n > number
  end
  
  result = lights.map.with_index do |on_or_off, index|
    if lights[index] == "on"
      index
    else
      nil
    end
  end
  
  result = result[1..-1]
  
  result = result.compact
  
end

# -------------------------------------------------------------------------------

# initialize the lights hash
def initialize_lights(number_of_lights)
  lights = Hash.new
  1.upto(number_of_lights) { |number| lights[number] = "off" }
  lights
end
  
# return list of light numbers that are on
def on_lights(lights)
  lights.select { |_position, state| state == "on" }.keys
end
  
# toggle every nth light in lights hash
def toggle_every_nth_light(lights, nth)
  lights.each do |position, state|
    if position % nth == 0
      lights[position] = (state == "off") ? "on" : "off"
    end
  end
end
  
# Run entire program for number of lights
def toggle_lights(number_of_lights)
  lights = initialize_lights(number_of_lights)
  1.upto(lights.size) do |iteration_number|
    toggle_every_nth_light(lights, iteration_number)
  end

  on_lights(lights)
end
  
p toggle_lights(1000)

p lights_on_or_off(10)


# with 5 ligths 
round 1 -- on on on on on
round 2 -- on off on off on
round 3 -- on off off off on
round 4 -- on off off on on
round 5 -- on off off on off


# with 10 lights
           1   2 3  4  5  6  7  8  9  10
round 1 -- on on on on on on on on on on
round 2 -- on of on of on of on of on of
round 3 -- on of of of on on on of of of
round 4 -- on of of on on on on on of of
round 5 -- on of of on of on on on of on
round 6 -- on of of on of of on on of on
round 7 -- on of of on of of of on of on
round 8 -- on of of on of of of of of on
round 9 -- on of of on of of of of on on
round 10-- on of of on of of of of on of