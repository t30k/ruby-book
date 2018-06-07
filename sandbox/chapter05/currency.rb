class Currency
  # 国名に応じて通過を返す（該当する通貨がなければnil）
  def find_currency(country)
    currencies = { japan: 'yen', us: 'dollar', india: 'rupee' }
    currencies[country]
  end

  # 指定された国の通貨を大文字にして返す
  def show_currency(country)
    currency = find_currency(country)
    # nilでないことをチェック（nilだとupcaseが呼び出せないため）
    # if currency
    #   currency.upcase
    # end

    # currencyがnilの場合を考慮して、&.演算子でメソッドを呼び出す
    currency&.upcase
  end
end

currency = Currency.new()
# 通貨が見つかる場合と見つからない場合の結果を確認
puts(currency.show_currency(:japan))
puts(currency.show_currency(:brazil))