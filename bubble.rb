def bubble_sort(arr)

    n = arr.length - 1
    n.times do |i|
        swap = true
        i = 0
        n = (arr.length-1) - i
        first_index = 0
        second_index = 1
        while second_index <= n
            if arr[first_index ] > arr[second_index]
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



def bubble_sort_by(arr)

    n = arr.length - 1
    n.times do |i|
        swap = true
        i = 0
        n = (arr.length-1) - i
        first_index = 0
        second_index = 1
        while second_index <= n
            if yield(arr[first_index] , arr[second_index] ) > 0

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
puts "\n First Test - Bubble sort \n"
arr = [2,3,4,1,26,9,10,4,4, 10, 15,12,2,0,1,5,70,23,57,29,0,12,33,100,33,77]
print bubble_sort(arr)

puts "\n Second Test - Bubble sort by \n"
print bubble_sort_by(["hi","hello","hey"]) { |left,right| left.length - right.length}
puts "\n"
print bubble_sort_by(["okey", "testing", "lol", "car", "yeees"]) { |left,right| left.length - right.length}