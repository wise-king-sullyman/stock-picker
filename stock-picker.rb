require 'pry'

def stock_picker(price_list)
  def profit(buy,sell)
    sell - buy
  end

  buy = price_list[0]
  sell = price_list[1]
  highest_profit = profit(buy,sell)

  price_list.each_with_index do |buy_price, index|
    price_list[index+1..].each do |sell_price|
      if profit(buy_price,sell_price) > highest_profit then
        highest_profit = profit(buy_price,sell_price)
        buy = price_list.index(buy_price)
        sell = price_list.index(sell_price)
      end
    end
  end
  p [buy,sell]
end

stock_picker([17,3,6,9,15,8,6,1,10])