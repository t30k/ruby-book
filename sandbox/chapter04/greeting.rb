def greeting(*names)
  "Hello！#{names.join(' and ')}"
end
puts greeting('Aaron')
puts greeting('Aaron', 'Bob')
puts greeting('Aaron', 'Bob', 'Christopher')