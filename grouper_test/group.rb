class Grouper
	def group_by_owners(files)
	  array = files.values.uniq
	  result = {}
	  array.each_with_index do |val, ind|
	  	array[ind] = []
	  	files.each do |key, value|
	  		if value == val
	  			array[ind].push(key)
	  		end
	  	end
	  	result[val] = array[ind]
	  end
	  result	
	end	
end

