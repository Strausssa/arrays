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
		new_string = "+" * string.length
		token_index = 0 
		while true 
			offset = token_index == 0 ? 0 :  token_index + token.length 
			token_index = string.index(token, offset)
			if token_index == nil 
				return new_string
			else
				for i in 0...token.length 
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
		span = 0 
		for n in 0...arrayes.length 
			for x in n...arrayes.length 
				if arrayes[x] == arrayes[n]
					span = (1 +(x-n)) if (1+(x-n)) > span && x-n >0
				end
			end
		end
		return span
	end

end