print "Input size:  "
n = gets.to_i

puts "enter the array elements"
arr=Array.new(n)

if n > 0 
  for i in (0..n-1)
    arr[i]=gets.chomp.to_i
  end
end
#puts variable1


def mergesort(array)
  return array if array.length == 1
  middle = array.length / 2
  merge mergesort(array[0...middle]), mergesort(array[middle..-1])
end


def merge(left, right)
  result = []
  until left.length == 0 || right.length == 0 do
    result << (left.first <= right.first ? left.shift : right.shift)
  end
  result + left + right
end
puts "Sorted array"
puts mergesort(arr)