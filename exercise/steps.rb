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

def steps num
    stair = String.new

    (0...num).each do |x|
        (0...num).each do |y|
            if y <= x
                stair += '#'
            else
                stair += '*'
            end
        end
    end

    stair
end

puts steps(5)