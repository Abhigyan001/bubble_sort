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





def bubble_sort_by(arr)
  my_arr = arr
  condition = true
  while condition
    condition = false
    (0...arr.length-1).each do |i|
      yield(my_arr[i], my_arr[i+1]).positive?
        next
      
        temp = my_arr[i]
        my_arr[i] = my_arr[i+1]
        my_arr[i+1] = temp
        condition = true
      
    end
  end
  puts my_arr
end

bubble_sort_by([2, 5, 1, 9, 6]) do |left,right|
  left - right
end