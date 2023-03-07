# 1st Challenge : Find out whether the shape is a cube


#require 'pry'

def find_cube(volume, side)
    # Return false for invalid numbers
    return false if volume <= 0 || side <= 0
  
    # Calculate the possible length, width, and height
    length = volume / side**2
    width = volume / (side * length)
    height = side
  
    # Check if all sides are equal
    #return (length - side) && (width - side) && (height - side)
    return (length - side).abs < 0.0001 && (width - side).abs < 0.0001 && (height - side).abs < 0.0001

  end
  

  #binding pry

  #OUTPUT
  #puts find_cube(27,3)
  #=>true
  #puts find_cube(64,5)
  #=>false