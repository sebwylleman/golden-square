require "password_checker"


describe "PasswordChecker check method" do
  it "returns true if the length is over 8 characters long" do
    password = PasswordChecker.new
    expect(password.check("programming")).to eq true
  end
  it "returns true if the length is equal to 8 characters long" do
    password = PasswordChecker.new
    expect(password.check("accurate")).to eq true
  end
  it "returns an error if under 8 characters long" do
    password = PasswordChecker.new
    expect{password.check("apple")}.to raise_error "Invalid password, must be 8+ characters."
  end
end
