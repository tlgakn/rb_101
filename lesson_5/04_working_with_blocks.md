[[1, 2], [3, 4]].map do |arr|
  puts arr.first
  arr.first
end

This example will output and return the following:

Copy Code
# 1
# 3
# => [1, 3]


When breaking down the example, pay close attention to:

The return value of the block
The return value of the method
Any side-effects

Use the following table to gauge the depth you should be thinking at when breaking down the code:

Line	Action	Object	Side Effect	Return Value	Is Return Value Used?
1	method call (map)	The outer array	None	New array [1, 3]	No
1-4	block execution	Each sub-array	None	Integer at index 0 of sub-array	Yes, used by map for transformation
2	method call (first)	Each sub-array	None	Element at index 0 of sub-array	Yes, used by puts
2	method call (puts)	Integer at index 0 of each sub-array	Outputs a string representation of an Integer	nil	No
3	method call (first)	Each sub-array	None	Element at index 0 of sub-array	Yes, used to determine the return value of block
The main difference to understand in this example is the return value of the block. This is because puts is no longer the last expression in the block, thereby changing the block's return value from nil to the integer returned by arr.first. The block's return value is then used by map to perform the transformation, replacing the inner array with an integer. Finally, map returns a new array with two integers in it.

If you missed any step shown in the table, make sure to study it again carefully until you fully understand. You'll be expected to take apart this type of code fluently in the coming lessons.