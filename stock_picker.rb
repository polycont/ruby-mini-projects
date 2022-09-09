def stock_picker(prices)

  test = []
  profits = []

  prices.each_with_index do |price, date|
    prices.each_with_index do |price2, date2|
      if prices.index(price2) > prices.index(price)
        test << [price, price2]
      end
    end
  end

  test.each do |array|
    profit = array[1] - array[0]
    profits << profit
  end

  max_profit_index = profits.index(profits.max)
  final_values = test[max_profit_index]
  return [prices.index(final_values[0]), prices.index(final_values[1])]
end

p stock_picker([17,3,6,9,15,8,6,1,10])