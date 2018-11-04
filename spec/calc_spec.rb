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

  describe "#multiply" do
    it "multiplies 2 numbers together" do
      calc = Calculator.new
      expect(calc.multiply(4, 5)).to eq(20)
    end

    it "can multiply any 2 numbers together" do
      calc = Calculator.new
      expect(calc.multiply(30, 12)).to eq(360)
    end
  end

  describe "#divide" do
    it "divides the first number by the second number" do
      calc = Calculator.new
      expect(calc.divide(44, 11)).to eq(4)
    end

    it "can divide given any 2 numbers" do
      calc = Calculator.new
      expect(calc.divide(-120, 5)).to eq(-24)
    end
  end
end
