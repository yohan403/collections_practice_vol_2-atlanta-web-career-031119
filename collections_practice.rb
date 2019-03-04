# your code goes here

def begins_with_r(array)
  new_array = []
  array.each do |i|
    if i.start_with?("r")
      new_array << TRUE
    else
      new_array << FALSE
    end
  end
  if new_array.include?(FALSE)
    return FALSE
  else
    return TRUE
  end
end

def contain_a(array)
  new_array = []
  array.each do |i|
    if i.include?("a") == TRUE
      new_array << i
    end
  end
end