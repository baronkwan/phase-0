# Concatenate Two Arrays

# I worked on this challenge [by myself, with: ].


# Your Solution Below

def array_concat(array_1, array_2)
  # Your code here
  if array_1.empty? && array_2.empty?
  	return []
  else
  	new_array_2 = array_2.reverse

  	until new_array_2.empty?
  		array_1 << new_array_2.pop
  	end
  	
  	return array_1
  end
end
