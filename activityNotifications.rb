#!/bin/ruby

require 'json'
require 'stringio'

# Complete the activityNotifications function below.
def activityNotifications(expenditure, d)
  @starter = 0 
  @closer = 0
  @notice_count = 0
  @i = 1
  expenditure.each do | diem|
    # wait for condition
    if @i > d 
      # make sub_array
      sub_array = expenditure[((@i-d)-1)..(@i - 2)].sort
      p sub_array
      if sub_array.size.odd? 
        result = (sub_array.size / 2).round  
        @median = sub_array[result] 
      else
        result = sub_array.size / 2 
        @median = (sub_array[result] + sub_array[(result + 1)]) / 2 
      end
      
      #calc if should notify
      if (diem >= 2 * @median) 
        @notice_count += 1
      end 
    end
    @i += 1
  end
  p @notice_count 

end