def bubble_sort(arr)
  my_arr = arr
  
  (0...arr.length).each { |i|
    if my_arr[i] < my_arr[i+1]
      next
    else
      temp = my_arr[i]
      my_arr[i] = my_arr[i+1]
      my_arr[i+1] = temp
  }

my_arr
end