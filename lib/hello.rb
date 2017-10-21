def hello_t(array)
  if block_given?
    i = 0

    while i < array.length
      yield(array[i])
      i = i + 1
    end

    array
  else
    puts "Hey! No block was given!"
  end
end

# call your method here!
arr = ["Tim", "Tom", "John"]

hello_t(arr) do  |name|
  puts name*3
end

hello_t(arr) { |name| puts name + "!!!!" }
