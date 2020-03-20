def join_ingredients(src)
  # Given an Array of 2-element Arrays ( [ [food1, food2], [food3, # food4]....[foodN, foodM]]):
  #
  # Build a new Array that contains strings where each pair of foods is
  # inserted into this template:
  #
  # "I love (inner array element 0) and (inner array element 1) on my pizza""
  # As such, there should be a new String for each inner array, or pair
  
  row_index = 0
  new_array = []
  while row_index < src.count do 
    inner_string = "I love #{src[row_index][0]} and #{src[row_index][1]} on my pizza"
    row_index += 1
    new_array << inner_string
  end
  new_array
end

def find_greater_pair(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # Produce a new Array that contains the larger number of each of the pairs
  # that are in the inner Arrays
  row_index = 0
  new_array = []
  while row_index < src.count do 
    if src[row_index][0] > src[row_index][1]
      greater_integer = src[row_index][0]
    else 
      greater_integer = src[row_index][1]
    end
    row_index += 1
    new_array << greater_integer
  end
  new_array
end

def total_even_pairs(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # if both numbers in the pair are even, then add both those numbers to the
  # total
  #
  # As a reminder any number % 2 will return 0 or 1. If the result is 0, then
  # the number was even. Review the operator documentation if you've forgotten
  # this!
  
  row_index = 0
  total = 0
  while row_index < src.count do 
    if (src[row_index][0] % 2 == 0) && (src[row_index][1] % 2 == 0)
      increment = src[row_index][0] + src[row_index][1]
    else 
      increment = 0
    end 
    row_index += 1
    total += increment
  end
  total
end
