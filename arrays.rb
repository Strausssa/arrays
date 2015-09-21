module Arrays
	
	def middles(array1,array2)
	 	new_array = [array1[1],array2[1]]
	 	new_array
	end
	
	def max(arrg)
		max = 0
		arrg.each do |element|
			if element > max
				max = element
			end
		end
		max
	end
	
	def lucky13?(arrg)
		sum = 0
		arrg.each do |element|
			if element == 1 || element == 3
				sum += 1
			end
		end
		if sum == 0
			true
		else 
			false
		end
	end

	def repeat_seperator(wordss, seperator, counter)
		new_string = ""
		(1..counter-1).each do |n|
			new_string += wordss + seperator
		end
		new_string + wordss
	end
	
	def same_ends?(ary , n)
		for i in 0...n
		 	if ary[i]!= ary[ary.length-n+i]
		 		return false
		 	end
		 end
		return true 
	end
	
	def starry?(stringer)
		found_star = false
		for n in 0...stringer.length
			if stringer[n] == "*" 
				found_star = true
				if n > 0 && n <= stringer.length - 2
					if stringer[n-1] != stringer[n +1]
						return false
					end
				end
			end
		end
		if found_star == true
			true
		else
			false
		end
	end
	
