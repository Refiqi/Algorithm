# --- Directions
# Given a string, return a new string with the reversed
# order of characters
# --- Examples
#   reverse('apple') === 'leppa'
#   reverse('hello') === 'olleh'
#   reverse('Greetings!') === '!sgniteerG'

string = 'Refiqi'

def reverse(str)
    reverse = str.split('').reduce { |x, y| y + x}
    reverse
end

p reverse(string)