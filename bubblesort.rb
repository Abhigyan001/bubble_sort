#default bubble sort

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
  my_arr
end


#bubble sort with usage of yield

def bubble_sort_by(arr)
  my_arr = arr
  condition = true
  while condition
    condition = false
    (0...arr.length-1).each do |i|
      if yield(my_arr[i], my_arr[i+1]).negative?
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

bubble_sort_by(["bla", "ba", "blabla", "b", "blaaablaa"]) do |left,right|
  left.length - right.length
end