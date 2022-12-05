require "greet"

describe "greet testing" do
  it "greets_rico?" do
    expect(greet("Rico")).to eq "Hello, Rico!"
  end

  it "greets_john?" do
    expect(greet("John")).to eq "Hello, John!"
  end
end