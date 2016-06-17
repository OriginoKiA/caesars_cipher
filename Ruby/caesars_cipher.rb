def convert(sentence, count)
    sentence = sentence.downcase
    sentence = sentence.split("")
    sentence.each |word| do
        word = word.ord
    end
end

convert("Hi",1)
