 require "pry"
  # Given an Array of 2-element Arrays ( [ [food1, food2], [food3, # food4]....[foodN, foodM]]):
  #
  # Build a new Array that contains strings where each pair of foods is
  # inserted into this template:
  #
  # "I love (inner array element 0) and (inner array element 1) on my pizza""
  # As such, there should be a new String for each inner array, or pair

def join_ingredients(src)
  new_array = []
  row_index = 0 
  while row_index < src.count do 
    inner_array = src[row_index]
    new_array << "I love #{inner_array[0]} and #{inner_array[1]} on my pizza"
    row_index +=1 
  end 
  new_array
end

# src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # Produce a new Array that contains the larger number of each of the pairs
  # that are in the inner Arrays

def find_greater_pair(src)
 new_array = []
 row_index = 0 
 while row_index < src.count do 
   inner_array = src[row_index]
   new_array << inner_array.max
   row_index += 1
 end 
 new_array
end

  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # if both numbers in the pair are even, then add both those numbers to the
  # total
  #
  # As a reminder any number % 2 will return 0 or 1. If the result is 0, then
  # the number was even. Review the operator documentation if you've forgotten
  # this!

def total_even_pairs(src)
total = 0 
row_index = 0 
while row_index < src.count do 
  inner_array = src[row_index]
  if (inner_array[0] % 2 == 0) && (inner_array[1] % 2 == 0)
    total += (inner_array[0] + inner_array[1])
  end 
  row_index += 1 
end 
total
 
end
