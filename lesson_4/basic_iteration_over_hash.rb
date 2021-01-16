produce = {
'apple' => 'Fruit',
'carrot' => 'Vegetable',
'pear' => 'Fruit',
'broccoli' => 'Vegetable'
}


def select_fruit(produce_list)
  produce_keys = produce_list.keys  # produce_keys = ["apple", "carrot", "pear", "broccoli"]
  counter = 0                       # produce_keys[0] = "apple" produce_keys[1] = "carrot".. 
  selected_fruits = {}
  
  loop do
    break if counter == produce_keys.size
    
    current_key = produce_keys[counter]
    current_value = produce_list[current_key]
    
    if current_value == 'Fruit'
      selected_fruits[current_key] = current_value
    end
    counter += 1
  end
  selected_fruits
end

p select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}
