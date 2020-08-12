def bubble_sort(array_to_sort)
    sorted = false
    until sorted
    sorted = true
    (0... array_to_sort.length - 1).each do |i|
        if array_to_sort[i] > array_to_sort[i.next]
            array_to_sort[i], array_to_sort[i.next] =array_to_sort[i.next], array_to_sort[i]
            sorted = false
        end
    end
    end
    array_to_sort
 end

 def buble_sort_by(array)
    n = array.length
    loop do 
        switch = false 
        (n-1).times do |e|
            if (yield array[e], array[e+1]).positive?
                array[e], array[e+1] = array[e+1], array[e]
                switch = true 
            end 
        end
    break if switch == false 
    end 
    array
end

bsort_by = buble_sort_by(["hello","hey","hi","her"]) do |left,right|
    left.length - right.length
end

p bubble_sort([8 ,5 ,7 ,2 , 3, 6, 4, 200, 84, 1, 0, 6, 2, 7])
puts bsort_by

