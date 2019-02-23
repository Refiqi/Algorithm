# --- Directions
# Given a string, return the character that is most
# commonly used in the string.
# --- Examples
# maxChar("abcccccccd") === "c"
# maxChar("apple 1231111") === "1"

string = 'aaaaaaabcde'

def maxChar str
    chars = {}; max = 0; maxchar = ''

    str.each_char do |char|
        chars[char] = str.count(char)
    end

    for char in chars
        if char[1] > max
            max = char[1]
            maxchar = char[0]
        end
    end
    
    maxchar
end

p maxChar(string)