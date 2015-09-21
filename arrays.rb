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
	
	def plus_it(string, token)
		new_string = "+" * string.length #for output
		token_index = 0 # initialize index of the token in the string to zero
		while true # loop till the string is exhausted(searched entire string)
			offset = token_index == 0 ? 0 :  token_index + token.length #Start from zero, if we found token index before, find the postiion after the previous index()
			token_index = string.index(token, offset)# searched the token from the offset in the string(if there is more than 1 token in word)
			if token_index == nil # if no more tokens found, return new string
				return new_string
			else
				for i in 0...token.length #found one more token or more , put the token back into the new string
					new_string[token_index + i] = token[i]
				end
			end
			
		end
	end
	
	def zero_front(arr)
		new_arr = []
		for element in 0...arr.length
			if arr[element] == 0
				new_arr.push(arr[element])
			end
		end
		for element in 0...arr.length
			if arr[element] > 0 
				new_arr.push(arr[element])
			end
		end
		new_arr
	end
	
	def ten_run(arrayss)
		multiple = 0
		for element in 0...arrayss.length
			multiple = arrayss[element] if arrayss[element] % 10 == 0
			arrayss[element] = multiple if multiple > 0
		end
		arrayss
	end
	
	def max_span(arrayes)
		span = 0 # declare the span as zero 
		for n in 0...arrayes.length # so you're looping through the values
			for x in n...arrayes.length # and then within each value to the end value
				if arrayes[x] == arrayes[n] #you're checking if any of the values are equal to each other
					#once you do, you're going to then subtract the index values, but add 1, since subtracting doesn't count the first 1
					span = (1 +(x-n)) if (1+(x-n)) > span && x-n >0	#checks whether the span is greater than the last one and that if there is no repition, its 0
				end
			end
		end
		return span
	end

end