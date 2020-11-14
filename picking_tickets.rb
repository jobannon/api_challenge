require 'pry'
a = [1, 2, 2, 3, 1, 2]

def pickingNumbers(a)
  @primary_count = 0
  @secondary_count = 0
  @count_type = "primary"

  a.sort.each_with_index do |element, i|
    if !a[i+1].nil?
        result = (a[i] - a[i+1]).abs 

      if in_sequence?(result)
        add_to_correct_count(@count_type)
      else 
        @count_type = "secondary"
        @secondary_count += 1
      end
    end
    check_biggest_count
  end
  p @primary_count
end

### Helper Methods
def in_sequence?(result)
  if result <= 1
    return true
  else
    return false
  end
end

def add_to_correct_count(count_type)
  if count_type == "primary"
    @primary_count += 1
  elsif count_type == "secondary"
    @secondary_count += 1
  end
end

def check_biggest_count
  if @secondary_count > @primary_count && @count_type == "secondary" 
    @primary_count = @secondary_count
    @count_type = "primary"
    @secondary_count = 0
  end
end

pickingNumbers(a)
