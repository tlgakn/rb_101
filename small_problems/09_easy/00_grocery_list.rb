=begin
Grocery List
Write a method which takes a grocery list (array) of fruits with quantities 
and converts it into an array of the correct number of each fruit.

=end

def buy_fruit(nested_array)
  new_array = []
  nested_array.to_h.each do |key, value|
    value.times do
      new_array << key
    end
  end
  new_array
end
  
p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) == ["apples", "apples", "apples", "orange", "bananas","bananas"]
