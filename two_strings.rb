#!/bin/ruby

require 'json'
require 'stringio'

# Complete the twoStrings function below.
def twoStrings(s1, s2)
  s1_map = {}
  s1.split('').each do |elem|  
    s1_map[elem] = elem 
  end
  
  s2_map = {}
  s2.split('').each do |elem|  
    s2_map[elem] = elem 
  end
  
  s1_map.keys.each do |key|
    if key == s2_map[key]
      return "YES"
    end
  end
  
  return "NO"
  
  
  

end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

q = gets.to_i

q.times do |q_itr|
    s1 = gets.to_s.rstrip

    s2 = gets.to_s.rstrip

    result = twoStrings s1, s2

    fptr.write result
    fptr.write "\n"
end

fptr.close()
