

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
  if count == 1
    return 1
  end
  temp = array.dup
  until triangular_number(temp) == count_triangular_number(count)
    count -= 1
    temp.pop
  end
  count + 1
end


thear = [1,2,3,5,6,7,8,9,10,11,13,14,15]

puts "* * * * * * * *"

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

puts "**** NEXT RUN ****"

puts "starting array is: "
puts thear.to_s

puts "array's triangular number is: "
puts triangular_number(thear)

puts "array count triangular number is: "
puts count_triangular_number(thear.length)

puts "missing number in the sequence is: "
num = find_missing_number(thear)
puts num
thear.push(num)

puts "----------------------------"
puts "adding number to sequence..."

puts "array is now: "
puts thear.sort.to_s
