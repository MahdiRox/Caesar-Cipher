require "../lib/script.rb"

describe "#caesar_cipher" do
    it "it wrap from z to a" do
      expect(caesar_cipher("z",1)).to eql("a")
    end
    it "shift the letter by the given number" do
        expect(caesar_cipher("abc",2)).to eql("cde")
    end
    it "it accept non letter characters and capital letter" do
        expect(caesar_cipher(".H!e#y_",3)).to eql(".K!h#b")
    end
end

