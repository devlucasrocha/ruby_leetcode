def reverse_vowels(s)
	vowels = %w[a e i o u]
	found_vowels = []
	found_vowels_index = []
	s.split('').each_with_index do |letter, index|
		if vowels.include?(letter) || vowels.include?(letter.downcase)
			found_vowels << letter
			found_vowels_index << index
		end
	end
	found_vowels.reverse!
	c = 0
	found_vowels_index.each do |index|
		s[index] = found_vowels[c]
		c += 1
	end
	s
end

s = "aA"
print reverse_vowels(s)