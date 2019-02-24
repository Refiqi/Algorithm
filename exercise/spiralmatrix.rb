# --- Directions
# Write a function that accepts an integer N
# and returns a NxN spiral matrix.
# --- Examples
#   matrix(2)
#     [[1, 2],
#     [4, 3]]
#   matrix(3)
#     [[1, 2, 3],
#     [8, 9, 4],
#     [7, 6, 5]]
#  matrix(4)
#     [[1,   2,  3, 4],
#     [12, 13, 14, 5],
#     [11, 16, 15, 6],
#     [10,  9,  8, 7]]

def spiral_matrix(n)
    result = []
    n.times { result.push([])}

    counter = 1;
    start_column = 0; end_column = n - 1
    start_row = 0; end_row = n - 1
    while start_column <= end_column && start_row <= end_row
        (start_column..end_column).each do |i|
            result[start_row][i] = counter
            counter += 1
        end
        start_row += 1
    
        (start_row..end_row).each do |i|
            result[i][end_column] = counter
            counter += 1
        end
        end_column -= 1
    
        (start_column..end_column).reverse_each do |i|
            result[end_row][i] = counter
            counter += 1
        end
        end_row -= 1
    
        (start_row..end_row).reverse_each do |i|
            result[i][start_column] = counter
            counter += 1
        end
        start_column += 1
    end

    result
end

print spiral_matrix(10)
