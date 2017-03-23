# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  prev_value = nil
  min_value = nil
  min_key = nil
  name_hash.each do |key, value|
    if prev_value == nil || value < min_value
      prev_value = value
      min_value = value
      min_key = key
    end
  end
  min_key

end

name_hash = {blake: 500, ashley: 2, adam: 1}
puts key_for_min_value(name_hash)
