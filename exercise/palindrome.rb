# --- Directions
# Given a string, return true if the string is a palindrome
# or false if it is not.  Palindromes are strings that
# form the same word if it is reversed. *Do* include spaces
# and punctuation in determining if the string is a palindrome.
# --- Examples:
#   palindrome("abba") === true
#   palindrome("abcdefg") === false

word = 'hannah'
word1 = 'gaggs'


def palindrome str
    reverse = str.split('').reduce { |x, y| y + x }
    return reverse == str
end

p palindrome(word) # => True
p palindrome(word1) # => False
