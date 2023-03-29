require './caesar_cipher'
describe "caesar_cipher" do 
    it "returns a new string for downcase characters" do
        expect(caesar_cipher('cat',1)).to eql('dbu')
    end
    it "returns a new string for upcase characters" do 
        expect(caesar_cipher('Cat',1)).to eql('Dbu')
    end
    it "returns a new string for characters at the end of the alphabet" do 
        expect(caesar_cipher('zoo', 1)).to eql('app')
    end
    it "returns a new string for words with space" do
        expect(caesar_cipher('hello Thao',2)).to eql('jgnnq Vjcq')
    end
end