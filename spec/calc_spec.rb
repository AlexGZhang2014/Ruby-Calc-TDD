require_relative "../lib/calc.rb"

describe "Calculator" do
  describe "initialize" do
    it "intializes a Calculator object" do
      calc = Calculator.new
      expect(Calculator).to be_a(Class)
      expect(calc).to be_a(Calculator)
    end
  end

  describe "#add" do
    it "adds 2 numbers together" do
      calc = Calculator.new
      expect(calc.add(2, 2)).to eq(4)
    end

    it "adds 2 other numbers together" do
      calc = Calculator.new
      expect(calc.add(3, 5)).to eq(8)
    end
  end
end
