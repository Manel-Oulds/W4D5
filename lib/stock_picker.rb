require 'byebug'
def stock_picker(prices)
    return nil if prices.nil? || prices.length < 2
  
    min_price = prices[0]
    max_profit = 0
    buy_day = sell_day = 0
  
    (1...prices.length).each do |i|
      if prices[i] < min_price
        min_price = prices[i]
      elsif prices[i] - min_price > max_profit
        max_profit = prices[i] - min_price
        buy_day = prices.index(min_price)
        sell_day = i
      end
    end
  
    return [buy_day, sell_day]
  end
  




p stock_picker([1,2,4,2,55,23,43,56,89,100]) 