require "caesars_cipher.rb"

describe converts_single_words do
    it "convert single words into caesar's cipher" do
        caesars_cipher("Hi",1).should == "ij"
    end
end

describe shift_letters_backwards do
    it "shift letters in the negative direction" do
        caesars_cipher("Hi",-1).should == "gh"
    end
end

describe convert_multiple_words do
    it "converts multiple words in a sentence into caesar's cipher" do
        caesars_cipher("Hello John",2).should == "jgnnq lqjp"
    end
    
    it "converts multiple words in a sentence into caesar's cipher backwards" do
        caesars_cipher("Hello John", -2).should == "f"
    end
end

describe loops_around do
    it "loops around if the shift is too big" do
        caesars_cipher("Hi",27).should == "ij"
    end
    
    it "loops around if the shift is too small" do
        caesars_cipher("Hi",-27).should == "ij"
    end
end