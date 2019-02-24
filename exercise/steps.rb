# --- Directions
# Write a function that accepts a positive number N.
# The function should console log a step shape
# with N levels using the # character.  Make sure the
# step has spaces on the right hand side!
# --- Examples
#   steps(2)
#       '# '
#       '##'
#   steps(3)
#       '#  '
#       '## '
#       '###'
#   steps(4)
#       '#   '
#       '##  '
#       '### '
#       '####'

# Recursive Method

def steps (n, row = 0, stair = '')
    return if n == row

    if n == stair.length
        puts stair
        return steps(n, row + 1)
    end

    if stair.length <= row
        stair += '#'
    else
        stair += ' '
    end

    steps(n, row, stair)
end











## Iterate method
# def steps num
#     stair = String.new

#     (0...num).each do |x|
#         (0...num).each do |y|
#             if y <= x
#                 stair += '#'
#             else
#                 stair += '*'
#             end
#         end

#         puts stair
#     end

# end

steps(5)