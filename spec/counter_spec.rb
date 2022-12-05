require "counter"

describe "test Counter class" do
  counter = Counter.new
  it "initial_count=0" do
    expect(counter.report).to eq "Counted to 0 so far."
  end
  it "adding to count" do
    counter.add(5)
    expect(counter.report).to eq "Counted to 5 so far."
  end
  it "adding twice" do
    counter.add(-3)
    expect(counter.report).to eq "Counted to 2 so far."
  end
end

