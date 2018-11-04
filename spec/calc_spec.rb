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

  describe "#subtract" do
    it "subtracts the first number from the second number" do
      calc = Calculator.new
      expect(calc.subtract(5, 3)).to eq(2)
    end

    it "can subtract given any 2 numbers" do
      calc = Calculator.new
      expect(calc.subtract(20, 14)).to eq(6)
    end
  end
end
