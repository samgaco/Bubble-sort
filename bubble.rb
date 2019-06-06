def bubble_sorting(arr)

    n = arr.length - 1
    stop = true
    swapused = false

 while stop == true
        
    n.times do |i|

        i = 0

        first_item = arr[i]
        second_item = arr[i+1]

        greater = first_item >= second_item

        if greater
            arr[i] = second_item
            arr[i+1] = first_item
            print "greater"
        
            swapused = true
        end

        i = i + 1
        print i
    end

    if swapused == false
        stop = false
    else
        stop = true
    end

 end


    return arr

end

#(1..n).each do |x| arr[x] > arr[x+1]
arr = [2,3,4,1]
print bubble_sorting(arr)

