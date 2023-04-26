# A string made of an even number of characters(‘<’ and ‘>’) is called symmetric of all character in it’s first half are ‘<’ and all characters in its second half are ‘>’ Examples  of symmetric strings (empty string) , “<>”, “<<>>”, “<<<>>>”, etc.
# write a function  

# class solution {public int solutions(string s); }
# that given a string of N characters (“<”, “>” and or “?” returns the length of the longest symmetric substring that can be obtained after replacing question marks with ‘<’ or ‘>’ characters

# write an efficient algorithm for the following assumptions 

# 1. the length of string  S is within the range [..200,00]
# 2. string S is made only of the following characters ‘<’, ‘>’ and /or “?”

class Solution
    def solution(s)
      n = s.length
      max_length = 0 # Initialize the max length of symmetric substring to 0
  
      # Loop through each character in the string
      (0...n).each do |i|
        # Initialize counters for counting the number of '<', '>', and '?' characters
        left_count = 0
        right_count = 0
        question_mark_count = 0
  
        # Loop through the characters on the left and right sides of the current position
        (i...n).each do |j|
          if s[j] == '<'
            left_count += 1
          elsif s[j] == '>'
            right_count += 1
          else
            question_mark_count += 1
          end
  
          # If the counts of '<', '>', and '?' characters are balanced,
          # update the max length of symmetric substring
          if left_count == right_count
            max_length = [max_length, 2 * left_count + question_mark_count].max
          end
        end
      end
  
      return max_length
    end
  end