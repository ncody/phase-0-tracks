#Release 0
arr = [12, 52, 3, 14, 7]
=begin
def search(arr, num)
  index = 0
  length = arr.length
  while index < length
    break if arr[index] == num
    index += 1
  end
  if length == index
    return nil
  end
return [index]
end

p search(arr, 3)
p search(arr, 12)
p search(arr, 72)
=end

=begin
Release 1
def fib(num)
index = 0
if num == 0
  array = []
elsif num == 1
  array = [0]
elsif num == 2
  array = [0,1]
end
num = num -2
array = [0,1]
while num > index
 x = array[-1] + array[-2]
 array << x
 index += 1
end
array
end
print fib(9)

if fib(100).last == 218922995834555169026
  puts true
else
  puts false
end
=end

#Release 2
#2. Visuals and examples of the sorting method help me understand the most. I read a lot of various sites on bubble sorts in ruby.
#3. I feel slightly overwhelemed. I think this can hinder my ability to learn if I do not recognize it and readjust my mindset to excitement about learning something new.

array = [7,15,1,13,3]
def bubble_sort array, new_array
   length=array.length
   index = 0
if length == 0
  new_array
else
  array.each do |num|
    next_num = array [index +1]
    if next_num == nil
       new_array
       array
      return bubble_sort array, new_array << array.pop

    elsif num > array[index+1]
      array[index+1] = num
      array[index] = next_num
    end
    index += 1
    end
  end
end
print bubble_sort(array, [])

