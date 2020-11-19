#!/bin/ruby
require 'json'
require 'stringio'

# Complete the activityNotifications function below.
def activityNotifications(expenditure, d)
  @notice_count = 0
  @i = 1 * 1.00
  expenditure.each do | diem|
    # wait for condition
    if @i > d 
      # make sub_array
      sub_array = expenditure[((@i-d)-1)..(@i - 2)].sort!
      p sub_array
      if sub_array.size.odd? 
        result = (sub_array.size / 2).round  
        @median = sub_array[result] 
      elsif sub_array.size.even?
        result = sub_array.size / 2 
        @median = (sub_array[result] + sub_array[(result + 1)]) / 2 
      end
      
      #calc if should notify
      if (diem >= 2 * @median) 
        @notice_count += 1
      end 
      p "deim #{diem} @median #{@median} double#{(@median * 2)} new_notice_count #{@notice_count}"
    end
    @i += 1
  end
  @notice_count

end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

nd = gets.rstrip.split

n = nd[0].to_i

d = nd[1].to_i

expenditure = gets.rstrip.split(' ').map(&:to_i)

result = activityNotifications expenditure, d

fptr.write result
fptr.write "\n"

fptr.close()