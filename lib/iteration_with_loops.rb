def join_nested_strings(src)
  # src will be an Array of Arrays of Strings and Integers
  # Combine all Strings present in the AoA into a single value and return it
  src.reduce("") do |acc, element|
    acc << " #{element.filter{|sub_element| sub_element.is_a?(String)}.join(' ')}"
  end
end