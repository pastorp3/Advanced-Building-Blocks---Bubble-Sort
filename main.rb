def bubble_sort (array_to_sort)
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
        p bubble_sort([8,5,7,2,3,6,4,200,84,1,0,6,2,7])