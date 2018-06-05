class Loops
  @@numbers = [1, 2, 3, 4, 5]
  def output_for_loop
    sum = 0
    for n in @@numbers
      sum_value = n.even? ? n * 10 : n
      sum += sum_value
    end
    puts sum
  end

  def output_for_each_loop
    sum = 0
    @@numbers.each do |n|
      sum_value = n.even? ? n * 10 : n
      sum += sum_value
    end
    puts sum
  end

  def output_infinite_loop1
    loop do
      n = @@numbers.sample
      puts n
      break if n == 5 # exit loop
    end
  end

  def output_infinite_loop2
    while true
      n = @@numbers.sample
      puts n
    end
  end

  def output_shuffled_fruits
    fruits = ['apple', 'melon', 'orange']
    numbers = [1, 2, 3]
    catch :done do
      fruits.shuffle.each do |fruit|
        numbers.shuffle.each do |n|
          puts "#{fruit}, #{n}"
          if fruit == 'orange' && n == 3
            # exit from nested loops
            throw :done
          end
        end
      end
    end
  end
end

loops = Loops.new()
loops.output_for_loop
loops.output_for_each_loop
# loops.output_infinite_loop
# loops.output_infinite_loop2
loops.output_shuffled_fruits