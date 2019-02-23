# --- Directions
# Check to see if two provided strings are anagrams of eachother.
# One string is an anagram of another if it uses the same characters
# in the same quantity. Only consider characters, not spaces
# or punctuation.  Consider capital letters to be the same as lower case
# --- Examples
#   anagrams('rail safety', 'fairy tales') --> True
#   anagrams('RAIL! SAFETY!', 'fairy tales') --> True
#   anagrams('Hi there', 'Bye there') --> False

stringA = 'Wohoo yey!'; StringB = 'yey Wohoo!!'

def anagrams(strA, strB)
    charsA = charsMap(strA); charsB = charsMap(strB)

    return false if charsA.keys.length != charsB.keys.length

    for char in charsA
        return charsA[char] == charsB[char]
    end
end

# Helper Function for counting string to obj

def charsMap str
    charsMap = {};

    str.gsub(/[^\w]/, '').each_char do |char|
        charsMap[char] = str.count(char)
    end

    charsMap
end

p charsMap(stringA)
p anagrams(stringA, StringB)
