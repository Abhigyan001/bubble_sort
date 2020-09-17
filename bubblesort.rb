def bubble_sort(arr)
  my_arr = arr
  
  (0...arr.length).each do |i|
    if my_arr[i] < my_arr[i+1]
      next
    else
      temp = my_arr[i]
      my_arr[i] = my_arr[i+1]
      my_arr[i+1] = temp
    end

  puts my_arr
  end
end
bubble_sort([1, 5, 2, 3, 1])