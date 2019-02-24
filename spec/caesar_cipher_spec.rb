require "./caesar_cipher"

describe "#caesar_cipher" do
   it "applies Caesar Cipher encoding to your string" do
     expect(caesar_cipher("What a string!", 5)).to eq("Bmfy f xywnsl!")
   end
 end


describe "#caesar_cipher" do
  it "maintains special characters and upper/lower case" do
    expect(caesar_cipher("ABC?", 1)).to eq("BCD?")
  end
end

describe "#caesar_cipher" do
  it "works in reverse!" do
    expect(caesar_cipher("abc", -1)).to eq("zab")
  end
end

