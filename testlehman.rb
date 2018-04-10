def trader(indices)
n = indices.size

i=0
while i < (n-1) do

t = 1
s = indices[i+t]-indices[i]
i= i +1 
puts s
end

end

puts trader([1,2,3])
