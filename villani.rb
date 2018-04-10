i=0
s=0

for i in 1..1000
  if i%3 ==0 || i%5 ==0 then
    s = s+i
  end
end

puts s
