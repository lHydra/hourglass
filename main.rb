HOURGLASS_INDEXES = ->(i,j) { [[i,j-1], [i, j], [i, j+1], [i+1, j], [i+2, j], [i+2, j-1], [i+2, j+1]] }

def hourglassSum(arr)
  i = 0
  max = -999
  while i < arr.size - 2
    j = 1
    while j < arr[i].size - 1
      sum = HOURGLASS_INDEXES.call(i,j).sum { |i| get_value(arr, i) }
      max = sum if sum > max
      j += 1
    end
    i += 1
  end
  max
end

def get_value(arr, index)
  arr[index[0]][index[1]]
end
