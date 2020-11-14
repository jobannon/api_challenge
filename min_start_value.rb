require 'pry'
nums = [-3,2,-3,4,2]
nums =[1,2]

# @param {Integer[]} nums
# @return {Integer}
def min_start_value(nums)
  # initial defaults
    @starting = 0 
    # outer loop to increment @starting_num 
    loop do
      if went_below_zero?(@starting, nums)
        @starting = @starting + 1
      else
        return @starting
      end
    end

    @starting
end

def went_below_zero?(starting, nums)
    @average = starting
    nums.each do |num|
      @average = @average + num 
      if @average < 1
        return true
      end
    end
    return false
end

@starting = min_start_value(nums)
p @starting