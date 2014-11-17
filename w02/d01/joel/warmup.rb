numbers = (0...1000)
sum = 0

numbers.each do |n|
  if n % 3 == 0 || n % 5 == 0
    sum += n
  end
end

puts sum


#  or you could do it like this


result = (0...1000).inject(0) do |sum, n|
  if n % 3 == 0 || n % 5 == 0
    sum + n
  else
    sum
  end
end

puts result