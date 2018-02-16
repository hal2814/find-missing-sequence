
def list_missing_numbers(array)
  current_ar = array.dup
  missing = []
  num = 0
  while num < current_ar.last
    num = find_missing_number(current_ar)
    current_ar = current_ar.push(num)
    current_ar = current_ar.sort
    missing = missing.push(num) if num < current_ar.last
  end
  missing
end


def create_array_of_size(num)
  ar = []
  until num == 0
    ar.push(num)
    num -= 1
  end
  ar.reverse
end

# returns the sum of all numbers that come before num: ex. 3 => 6
def triangular_number(ar)
  return 1 if ar.length == 1
  ar.inject(0) { |sum, x| sum + x }
end

def count_triangular_number(num)
  return 1 if num == 1
  ar = []
  until num == 0
    ar.push(num)
    num -= 1
  end
  ar.inject(0) { |sum, x| sum + x }
end

# decrements until triangular_number is equal to count of number
def find_missing_number(array)
  count = array.length
  return 1 if count == 1
  temp = array.dup
  until triangular_number(temp) == count_triangular_number(count)
    count -= 1
    temp.pop
  end
  count + 1
end

size = 25
thear = create_array_of_size(size)
thear.delete(rand(1..(size - 1)))
thear.delete(rand(1..(size - 1)))
thear.delete(rand(1..(size - 1)))
thear_copy = thear.dup

puts "********************"
puts "**** FIRST RUN ****"
puts "********************"

puts "starting array is: "
puts thear.to_s

puts "array's triangular number is: "
puts triangular_number(thear)

puts "array count triangular number is: "
puts count_triangular_number(thear.length)

puts "missing number in the sequence is: "
num = find_missing_number(thear)
puts num
thear = thear.push(num).sort

puts "----------------------------"
puts "adding number to sequence..."

puts "array is now: "
puts thear.to_s

puts "********************"
puts "**** SECOND RUN ****"
puts "********************"

puts "starting array is: "
puts thear.to_s

puts "array's triangular number is: "
puts triangular_number(thear)

puts "array count triangular number is: "
puts count_triangular_number(thear.length)

puts "missing number in the sequence is: "
num = find_missing_number(thear)
puts num
thear = thear.push(num).sort

puts "----------------------------"
puts "adding number to sequence..."

puts "array is now: "
puts thear.to_s

puts "********************"
puts "**** THIRD RUN ****"
puts "********************"

puts "starting array is: "
puts thear.to_s

puts "array's triangular number is: "
puts triangular_number(thear)

puts "array count triangular number is: "
puts count_triangular_number(thear.length)

puts "missing number in the sequence is: "
num = find_missing_number(thear)
puts num
thear = thear.push(num).sort

puts "----------------------------"
puts "adding number to sequence..."

puts "array is now: "
puts thear.to_s

puts "*All missing numbers:"
puts list_missing_numbers(thear_copy).to_s
