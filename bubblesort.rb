def bubble_sort(arr)
  my_arr = arr
  condition = true
  while condition
    condition = false
    (0...arr.length-1).each do |i|
      if my_arr[i] < my_arr[i+1]
        next
      else
        temp = my_arr[i]
        my_arr[i] = my_arr[i+1]
        my_arr[i+1] = temp
        condition = true
      end  
    end
  end
  puts my_arr
end
bubble_sort([1, 56, 34, 12, 0])