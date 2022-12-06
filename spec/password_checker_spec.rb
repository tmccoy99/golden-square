require "password_checker"

RSpec.describe PasswordChecker do
  password_checker = PasswordChecker.new
  context "when length < 8" do
    it "fails" do
      expect { password_checker.check("Several") }.to raise_error "Invalid password, must be 8+ characters."
    end
  end

end