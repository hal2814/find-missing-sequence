class FMS
    def initialize(array)
      @array = array
    end

  def find
    list_missing_numbers(@array)
  end

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

end


ar = FMS.create_array_of_size(70)
ar.delete(rand(1..(70 - 1)))
ar.delete(rand(1..(70 - 1)))
ar.delete(rand(1..(70 - 1)))

fms = FMS.new(ar)

puts ar.to_s
puts fms.find.to_s
