# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  result = 0
  arr.each { |x|
    result = result + x
  } 
  result
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.length == 0 then
    return 0
  elsif arr.length == 1 then
    return arr[0]
  elsif arr.length == 2 then
    return arr[0] + arr[1]
  end
  largest1 = arr[0] > arr[1] ? arr[0] : arr[1]
  largest2 = arr[0] > arr[1] ? arr[1] : arr[0]
  arr.slice(2, arr.length - 1).each do |x|
    if x > largest2
      largest2 = x
    end
    if x > largest1
      largest1, largest2 = x, largest1
    end
  end
  return largest1 + largest2
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  hash = Hash.new()
  result = false
  arr.each do |x|
    pair = n - x
    if hash.has_key?(pair)
      result = true
      break
    else
      hash[x] = x
    end
  end
  result
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, " << name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s.empty? then return false end
  if !(/^[a-zA-Z]/ =~ s) then return false end
  consonant = /^[aeiou]\w*/
  !(consonant =~ s.downcase)
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if !(/^\d/ =~ s) then return false end
  num = s.to_i
  remainder = num.remainder(4)
  if remainder == 0 then
    return true 
  else
    return false
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
