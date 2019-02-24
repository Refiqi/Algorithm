# --- Directions
# Write a function that returns the number of vowels
# used in a string.  Vowels are the characters 'a', 'e'
# 'i', 'o', and 'u'.
# --- Examples
#   vowels('Hi There!') --> 3
#   vowels('Why do you ask?') --> 4
#   vowels('Why?') --> 0

string = 'Refiqi Muhamad Fadila'

# def vowels str
#     count = 0; vowels = ['a', 'i', 'u', 'e', 'o']

#     str.downcase.each_char do |char|
#         if vowels.include?(char)
#             count += 1
#         end
#     end

#     count
# end

# def vowels str
#     matched = str.match(/[aiueo]/i)
#     matched ? matched.length : 0
# end

p vowels(string)