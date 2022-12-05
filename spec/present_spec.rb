require "present"

RSpec.describe Present do
  present = Present.new

  context "when empty" do
    it "fails to unwrap" do
      expect { present.unwrap }.to raise_error "No contents have been wrapped."
    end
  end

  context "when full" do
    it "fails to wrap" do
      present.wrap("festive jumper")
      expect { present.wrap("socks") }.to raise_error "A contents has already been wrapped."
    end
  end

  context "when full" do
    it "should unwrap" do
      expect(present.unwrap).to eq "festive jumper"
    end
  end
end
