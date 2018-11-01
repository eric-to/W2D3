def my_uniq(arr)
  new_arr = []
  arr.each { |el| new_arr << el unless new_arr.include?(el) }
  new_arr
end

class Array
  
  def two_sum
    pairs = []
    (0...self.length).each do |i|
      (i + 1...self.length).each do |j|
        pairs << [i, j] if self[i] + self[j] == 0
      end
    end
    
    pairs
  end
  
  def my_transpose
    dim = self.length
    new_matrix = Array.new(dim) { Array.new(dim) }
    (0...dim).each do |i|
      (0...dim).each do |j|
        new_matrix[j][i] = self[i][j]
      end
    end
    new_matrix
  end
  
end

def stock_picker(stocks)
  # biggest_idx = 0
  # highest_price = 0
  # stocks.each_with_index do |price, idx|
  #   if price > highest_price
  #     highest_price = price
  #     biggest_idx = idx
  #   end
  # end
  
  pairs = []
  (0...stocks.length).each do |i|
    (i + 1...stocks.length).each do |j|
      if stocks[j] > stocks[i]
        pairs << [i, j]
      end
    end
  end
  pairs = pairs.sort_by { |pair| stocks[pair[1]] - stocks[pair[0]] }.last
end

