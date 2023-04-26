# You are given an array S consisting of N strings. every string is of the same length M. Your task is to find a pair of strings in array S. such that there exists a position in which both of the strings have the same letter .Both the index in array S and the positions in the strings are numbered from zero

# For example given S=[“ abc”, “ bca”,”dbe”],string 0(“abc) and string 2(“ dbe”) have the same letter ‘b’ in position 1.On the other hand for strings ‘abc’ and ‘bca’ there does not exist a position which they have the same letter.

# Write a function

# class solution {public int[] solution(string[ ] s); }

# that given  a zero indexed array S of strings from S which have a common letter at some index. if there is no such pair,the function should return an empty array. if there is more than one correct answer,the function can return any of them.
# The result should be represent as an array containing three integers. The first two integers are the same indexes in S of the strings belonging to the pair.The third integer is the position of the common letter.

# For S =[“abc”, “bca”, “dbe”] as above the result array should be represented as[0,2,1].Another correct answer is [2,0], as the order of [2,0,1], as the order of indexes of strings does not matter

# Write an efficient algorithm for the following assumptions
# 1. N is an integer within the range [1..30,000]
# 2. M is an integer within range [1..2,000]
# 3. each element of S consists only of lowercase English letters(a-z)
# 4N*M<=30,000

class Solution
    def solution(s)
      # Create a hash to store the indices of letters
      letter_indices = Hash.new { |hash, key| hash[key] = [] }
      
      # Loop through each string in the array and populate the hash
      s.each_with_index do |string, index|
        string.each_char.with_index do |char, position| #char variable rep the current character, postion represents its index in the string.
          letter_indices[char].push([index, position]) # Store the index and position of the letter
        end
      end
      
      # Loop through the hash to find a pair of strings with a common letter
      s.each_with_index do |string, index|
        string.each_char.with_index do |char, position|
          indices = letter_indices[char] # Get the indices and positions of the letter from the hash
          
          # Check if there are more than one string with the same letter at the same position
          if indices.size > 1
            indices.each do |other_index, other_position|
              next if index == other_index # Skip if it's the same string
              
              return [index, other_index, position] # Return the result if found
            end
          end
        end
      end
      
      return [] # Return an empty array if no pair is found
    end
  end