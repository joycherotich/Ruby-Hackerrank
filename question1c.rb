# write a function

# function solution(A);

# that given  an array A consisting of N returns the maximum among all integers which are multiples of 4.

# For example the function returns an array as follows 
# [-6,-91, 1011,-100,84,-22,0,1,473]
# the function should return 84

# assume that N is an integer within the range [1..1,000],
# each element of array is an integer within the range [-10,000 ..10,000];
# there is at least one element in array A that satisfies the condition in the task statement.
def solution(a)
    max_multiple_of_4 = nil # Initialize variable to store the maximum multiple of 4
    
    # Loop through each element in the array
    a.each do |num|
      if num % 4 == 0 # Check if the element is a multiple of 4
        max_multiple_of_4 = num if max_multiple_of_4.nil? || num > max_multiple_of_4 # Update the maximum multiple of 4
      end
    end
    
    return max_multiple_of_4 # Return the maximum multiple of 4
  end