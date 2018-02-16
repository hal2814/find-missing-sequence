

  def sequence_array(array)

  end

  # decrements until triangular_number is equal to count of number
  def find_missing_number(array)
    count = array.length
    if count == 1 then return 1
    until triangular_number(count,array) == count_triangular_number(count)
      count -= 1
    end
    count + 1
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



    # def last_num_id
    #   SomeClass.last.number_id
    # end
    #
    # def first_num_id
    #   SomeClass.first.number_id
    # end
    #
    # def after_first_num_id(i)
    #   SomeClass.first(i).last.number_id
    # end
    #
    # def before_last_num_id(i)
    #   SomeClass.last(i).first.number_id
    # end
    #
    # def num_id_exists?(id)
    #   SomeClass.exists?(number_id: id.to_s)
    # end

    # # set number id in correct sequence even if user enters id out of sequence
    #     def set_number_id
    #       num_id = 1
    #       # if number exist but no number_id has been set
    #       if SomeClass.any?
    #         self.number_id = nil if number_id == ""
    #         determine_id_placement(num_id)
    #       # sets number id if no previous sequence exists yet
    #     elsif !number_id
    #         number_id_to_self(num_id)
    #       end
    #     end
    #
    #     def determine_id_placement(num_id)
    #       unless number_id
    #         # if not just one number_id in system
    #         if last_num_id == first_num_id
    #           num_id = last_num_id + 1
    #         else
    #           # if id is out of sequential order (user entered number_id)
    #           num_id = check_sequence
    #         end
    #         number_id_to_self(num_id)
    #       end
    #     end
    #
    #     def number_id_to_self(num_id)
    #       self.number_id = num_id.to_s
    #     end
    #
    #     # checks original sequence to assign new ids to
    #     def check_sequence(k = 2)
    #       i = find_missing_number(k)
    #       i += 1 while num_id_exists?(i)
    #       i
    #     end
