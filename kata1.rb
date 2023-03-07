# 1st Challenge : Broken Sequence

#require 'pry'

def sequence_check(str)
    # Convert the input string into an array of integers
    arr = str.split.map(&:to_i)
  
    # Check for non-numeric elements
    return 1 if arr.any? { |n| n.to_s != n.to_i.to_s }
  
    # Sort the array and check if it's a complete sequence
    if arr.sort == (1..arr.size).to_a
      return 0
    else
      # Find the first missing number in the sequence
      i = 1
      while arr.include?(i)
        i += 1
      end
      return i
    end
  end

  #binding pry

  #OUTPUT

#sequence_check("1 2 3 4")
#=> 0
#sequence_check("2 1 3 a")
#=> 4
#sequence_check("1 5")
#=> 2
#sequence_check("1 2 4 3")
#=> 0