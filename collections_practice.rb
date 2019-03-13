require 'pry'
# your code goes here
def begins_with_r(array)
  array.all? { |x| x.start_with?("r")}
end

def contain_a(array)
  array.select { |x| x.include?("a")}
end

def first_wa(array)
  array.find { |x| x.to_s.start_with?("wa")}
end

def remove_non_strings(array)
  array.delete_if { |x| x.class != String }
end

def count_elements(array)
  b_count = array.count({:name => "blake"})
  a_count = array.count({:name => "ashley"})
  new_array = [{:count=>b_count, :name=>"blake"}, {:count=>a_count, :name=>"ashley"}]
end

def merge_data(keys,data)
    h1 = data[0].values[0].merge(keys[0])
    h2 = data[0].values[1].merge(keys[1])
    array = []
    array << h1
    array << h2
end

def find_cool(array)
  new_array = []
  array.each_with_index do |element,index|
    if array[index][:temperature] == "cool"
      new_array << element
    end
  end
  new_array
end

def get_list_of_locations(hash)
  list_of_locations = []
  hash.values.each do |location|
    list_of_locations << location[:location]
  end
  list_of_locations = list_of_locations.uniq
end

def create_empty_hash(hash)
  organized_schools = Hash.new
  location_list = get_list_of_locations(hash)
  location_list.each do |city|
    organized_schools[city] = []
  end
  organized_schools
end


def organize_schools(hash)
  organized_hash = create_empty_hash(hash)
  hash.each do |x|
    key = x[1][:location]
    organized_hash[key].push(x[0])
  end
  organized_hash
end
