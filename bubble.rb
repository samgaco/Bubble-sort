def bubble_sorting(arr)

    n = arr.length - 1
    n.times do |i|
        swap = true
        i = 0
        n = (arr.length-1) - i
        first_index = 0
        second_index = 1
        while second_index <= n
            if arr[first_index ] > arr[second_index]
                # temp = arr[first_index ]
                # arr[first_index ] = arr[second_index]
                # arr[second_index] = temp
                arr[first_index], arr[second_index] = arr[second_index], arr[first_index]
                swap = false
            end
            first_index  += 1
            second_index += 1
        end
        if swap == true
            return arr
        end
    end
    return arr

end

#(1..n).each do |x| arr[x] > arr[x+1]
arr = [2,3,4,1,26,9,10,4,4, 10, 15,12,2,0,1,5,70,23,57,29,0,12,33,100,33,77]
print bubble_sorting(arr)

