# default bubble sort

def bubble_sort(arr)
  my_arr = arr
  condition = true
  while condition
    condition = false
    (0...arr.length - 1).each do |i|
      next unless my_arr[i] > my_arr[i + 1]

      temp = my_arr[i]
      my_arr[i] = my_arr[i + 1]
      my_arr[i + 1] = temp
      condition = true
    end
  end
  my_arr
end

# bubble sort with usage of yield

def bubble_sort_by(arr)
  my_arr = arr
  condition = true
  while condition
    condition = false
    (0...arr.length - 1).each do |i|
      next unless yield(my_arr[i], my_arr[i + 1]).positive?

      temp = my_arr[i]
      my_arr[i] = my_arr[i + 1]
      my_arr[i + 1] = temp
      condition = true
    end
  end
  puts my_arr
end

bubble_sort_by(%w[bla ba blabla b blaaablaa]) do |left, right|
  left.length - right.length
end
