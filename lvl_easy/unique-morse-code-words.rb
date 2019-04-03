# International Morse Code defines a standard encoding where each letter is mapped to a series of dots and dashes, as follows: "a" maps to ".-", "b" maps to "-...", "c" maps to "-.-.", and so on.

# For convenience, the full table for the 26 letters of the English alphabet is given below:

# [".-","-...","-.-.","-..",".","..-.","--.","....","..",".---","-.-",".-..","--","-.","---",".--.","--.-",".-.","...","-","..-","...-",".--","-..-","-.--","--.."]
# Now, given a list of words, each word can be written as a concatenation of the Morse code of each letter. 
# For example, "cba" can be written as "-.-..--...", (which is the concatenation "-.-." + "-..." + ".-"). 
# We'll call such a concatenation, the transformation of a word.
# Return the number of different transformations among all words we have.

def unique_morse_representations(words)
    comp_arr = []
    words.each do |word|
        alfa_morse = [".-","-...","-.-.","-..",".","..-.","--.","....","..",".---","-.-",".-..","--","-.","---",".--.","--.-",".-.","...","-","..-","...-",".--","-..-","-.--","--.."]
        alfa = [*'a'..'z']
        hash_alfa = Hash.new
        alfa.size.times do |i|
            hash_alfa[alfa[i].to_sym] = alfa_morse[i]
        end
        word = word.split('')
        word.map! do |e|
            e.to_sym
        end
        str = ''
        word.size.times do |i|
            str += hash_alfa[word[i]]
        end
        comp_arr << str
    end
    diff = comp_arr.group_by{|e| e}.map{|k, v| [k, v.size]}.to_h.size
    diff
end

print "There are #{unique_morse_representations(["gin", "zen", "gig", "msg"])} different transformations"