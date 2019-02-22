# --- Directions
# Given an array and chunk size, divide the array into many subarrays
# where each subarray is of length size
# --- Examples
# chunk([1, 2, 3, 4], 2) --> [[ 1, 2], [3, 4]]
# chunk([1, 2, 3, 4, 5], 2) --> [[ 1, 2], [3, 4], [5]]
# chunk([1, 2, 3, 4, 5, 6, 7, 8], 3) --> [[ 1, 2, 3], [4, 5, 6], [7, 8]]
# chunk([1, 2, 3, 4, 5], 4) --> [[ 1, 2, 3, 4], [5]]
# chunk([1, 2, 3, 4, 5], 10) --> [[ 1, 2, 3, 4, 5]]

array = [1, 2, 3, 4, 5, 6, 7, 8, 9]

def chunk(arr, size)
    chunked = []

    for element in arr
        last = chunked[chunked.length - 1]

        if !last || last.length == size
            chunked.push([element])
        else
            last.push(element)
        end
    end

    chunked
end

def chunk_v1(arr, size)
    chunked = []; index = 0

    while index < arr.length
        chunked.push(arr.slice(index...index + size))
        index += size
    end

    chunked
end


p chunk(array, 2)
p chunk_v1(array, 2)
