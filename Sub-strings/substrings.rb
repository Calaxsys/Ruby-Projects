dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)
    dictionary.reduce(Hash.new(0)) do |result, word|
        if string.downcase.include?(word)
            result[word] = string.downcase.scan(word).length
        end

        result
    end
end

p substrings("below", dictionary)
p substrings("Howdy partner, sit down! How's it going?", dictionary)