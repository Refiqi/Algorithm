# --- Directions
# Write a function that accepts a positive number N.
# The function should console log a pyramid shape
# with N levels using the # character.  Make sure the
# pyramid has spaces on both the left *and* right hand sides
# --- Examples
#   pyramid(1)
#       '#'
#   pyramid(2)
#       ' # '
#       '###'
#   pyramid(3)
#       '  #  '
#       ' ### '
#       '#####'

# Iterate Method

# def pyramid num
#     mid_point = (2 * num - 1) / 2

#     (0...num).each do |row|
#         level = ''
#         (0...(2 * num - 1)).each do |column|
#             if mid_point - row <= column && mid_point + row >= column
#                 level += '#'
#             else
#                 level += ' '
#             end
#         end

#         puts level
#     end
# end

def pyramid(num, row = 0, level = '')
    return if num === row

    if 2 * num - 1 === level.length
        puts level
        return pyramid(num, row + 1)
    end

    mid_point = (2 * num - 1) / 2
    if mid_point - row <= level.length && mid_point + row >= level.length
        level += '#'
    else
        level += ' '
    end

    pyramid(num, row, level)
end


pyramid(5)
