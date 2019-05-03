# @param {String} a
# @param {String} b
# @return {String[]}
def uncommon_from_sentences(a, b)
	phrase = "#{a} #{b}".split(' ')
	uniq_words = []
	phrase.each do |word|
		uniq_words << word if phrase.count(word) == 1
	end
	uniq_words
end

a = "this apple is sweet"
b = "this apple is sour"

print uncommon_from_sentences(a, b)