require 'pry'
a = [1, 2, 2, 3, 1, 2]
a = [4, 6,  5,  3,  3,  1]
@count = 0
@hightest = 0
@storing = {}
@counter = 0

def pickingNumbers(a)
  @lowest = a[0]
  a.sort.each_with_index do |current_num, i|
    if (current_num - @lowest).abs <= 1  
      @storing[@counter].nil? ? @storing[@counter] = [current_num] : @storing[@counter] << current_num
    else # increment counter
      @counter += 1
      @lowest = current_num
      @storing[@counter].nil? ? @storing[@counter] = [current_num] : @storing[@counter] << current_num
    end
  end

  # calculate highest
  @highest = 0
  @storing.each do |k, v|
    if v.size > @highest 
      @highest = v.size
    end
  end

  p @highest

end

pickingNumbers(a)