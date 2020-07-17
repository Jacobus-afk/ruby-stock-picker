def stock_picker(stock_prices)
    max_idx = 1
    max_diff = [0,[0,1]]
    while max_idx < stock_prices.length()
        max = stock_prices[max_idx..-1].each_with_index.max
        max[1] += max_idx
        min = stock_prices[0..max[1]].each_with_index.min
        if (max[0] - min[0]) > max_diff[0]
            max_diff[0] = max[0] - min[0]
            max_diff[1] = [min[1],max[1]]
        end
        max_idx = max[1] + 1
    end
    max_diff[1]
end

# print stock_picker([17,3,6,9,15,8,6,1,14])
# print stock_picker([17,3,6,9,15,14,6,1,10])
# print stock_picker([17,3,6,9,15,1,6,14,10])
print stock_picker([17,3,6,9,15,2,15,6,1,1])
print stock_picker([17,3,6,9,15,8,6,1,10])