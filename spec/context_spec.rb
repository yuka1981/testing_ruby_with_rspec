RSpec.describe "#even? method" do
  context "when number is even" do
    it "should be true" do
      expect(4.even?).to eq(true)
    end
  end

  context "when number is odd" do
    it "should be false" do
      expect(5.even?).to eq(false)
    end
  end
end
