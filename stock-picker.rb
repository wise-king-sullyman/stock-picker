require 'pry'

def stock_picker(price_list)
  def profit(buy,sell)
    sell - buy
  end

  best_profit = [0,0]

  price_list.sort.map do |sorted_price|
    price_list[price_list.index(sorted_price)+1..].each do |price|
      if profit(sorted_price,price) > profit(best_profit[0],best_profit[1]) then
        best_profit = [sorted_price,price]
      end
    end
  end
  best_profit
  p [price_list.index(best_profit[0]),price_list.index(best_profit[1])]
end

stock_picker([17,3,6,9,15,8,6,1,10])