def caesars_cipher(sentence,shift)
    if shift >= 26 #If the shift count is big or small enough it will loop end up looping around
        shift -= 26
    elsif shift <= -26
        shift += 26
    end
    new_sentence = "" #variable to store the converted sentence
    sentence.downcase!
    sentence.each_byte do |i|
        if i != 32 #ASCII code for space is 32 so if it's a space, skip it
            new_letter = i + shift #create a new letter 
            new_sentence += new_letter.chr #add new letter
        else
            new_sentence += i.chr #add space
        end
    end
    puts new_sentence
    return new_sentence
end