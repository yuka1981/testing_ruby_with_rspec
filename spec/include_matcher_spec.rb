RSpec.describe "include matcher" do
  # string
  describe "hot chocolate" do
    it "checks for substring inclusion" do
      expect(subject).to include("hot")
      expect(subject).to include("choco")
      expect(subject).to include("late")
    end

    # one line syntax
    it { is_expected.to include("choco")}
  end

  # array
  describe [10, 20, 30] do
    it "checks for inclusion in the array, regardless of order" do
      expect(subject).to include(10)
      expect(subject).to include(10, 20)
      expect(subject).to include(30, 20)
    end

    it { is_expected.to include(20, 30, 10) }
  end

  # hash
  describe ({ a: 1, b: 2 }) do
    it "checks for key existence" do
      expect(subject).to include(:a)
      expect(subject).to include(:b)
      expect(subject).to include(:a, :b)
      expect(subject).to include(:b, :a)
    end

    it "checks for key-value pair" do
      # hash 的 curly brace 可省略
      expect(subject).to include(a: 1)
    end

    it { is_expected.to include(:b) }
    it { is_expected.to include(b: 2) }
  end
end