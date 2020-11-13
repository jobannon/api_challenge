arr = [-2, 3, 1,-5]

# @param {Integer[]} nums
# @return {Integer}
def min_start_value(nums)
  # initial defaults
  broken = true 
  x = 0
  
  #outer loop to increment x
  until @broken == false do 
     
     #inner loop to check x thru the array
      t = 0
   nums.reduce(0) do |acc, ele|
       if t = 0 
          acc = x
       end
       acc = acc + ele
       min_hit?(acc)
       acc
   end
   if @broken == true
     x = x + 1
   elsif @broken == false 
     return x - 1
   end
  end
end
       
  def min_hit?(acc)
      
    if acc < 0 
         @broken = true
    elsif acc >= 0
         @broken = false
    end
      
  end
         