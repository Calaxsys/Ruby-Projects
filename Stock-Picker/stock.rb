def stock_picker(prices)
    day_to_buy = 0
    day_to_sell = 0
    
    max_stock_price = prices[0]
    min_stock_price = prices[0]

    profit = 0

    prices.each_with_index do |stock_price, day|
        next if day == 0
        
        if stock_price > max_stock_price
            max_stock_price = stock_price
            price_difference = max_stock_price - min_stock_price

            if price_difference >= profit
                day_to_sell = prices.find_index(max_stock_price)
                day_to_buy = prices.find_index(min_stock_price)
                profit = price_difference
            end

        elsif stock_price < min_stock_price
            max_stock_price = stock_price
            min_stock_price = stock_price
        end
    end

    if profit > 0
        [day_to_buy, day_to_sell]
    else
        "No profit was made"
    end
end

prices = [17,3,6,9,15,8,6,1,10]