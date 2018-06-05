class Hash
  def output_using_string
    currencies = { 'japan' => 'yen', 'us' => 'dollar', 'india' => 'rupee' }

    currencies.each do |key, value|
      puts "#{key} : #{value}"
    end
  end

  def output_using_symbol
    currencies = { japan: 'yen', us: 'dollar', india: 'rupee' }
    puts currencies[:us]
  end
  
  def output_using_keyword_arguments(menu, drink: true, potato: true)
    puts menu
    if drink
      puts 'buy drink'
    end
    if potato
      puts 'buy potato'
    end
  end
end

hash = Hash.new()
hash.output_using_string
hash.output_using_symbol
hash.output_using_keyword_arguments('fish', drink: true, potato: false)