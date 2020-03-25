def hello_t (array)
  i = 0
  #First time through loop = 0, then 1, then so on
  while i < array.length
    #During each step of while loop, i will equal an index of our array
    #We can use this information to yield each successive value in array
    yield array[i]
    i = i + 1
  end
end

# call your method here!

hello_t(["Tim", "Tom", "Jim"]) do |name|
  if name.start_with?("T")
    puts "Hi, #{name}"
  end
end

hello_t("Test") do
  puts "Hi"
end
