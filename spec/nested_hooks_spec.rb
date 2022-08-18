RSpec.describe "nested hooks" do
  before(:context) do
    puts "Outer before context"
  end

  after(:context) do
    puts "Outer after context"
  end

  before(:example) do
    puts "Outer before example"
  end

  it "some thing else" do
    expect(1+2).to eq(3)
  end

  context "nested context" do
    before(:context) do
      puts "Inner before context"
    end

    before(:example) do
      puts "Inner before example"
    end

    it "nested some thing else" do
      expect(2+2).to eq(4)
    end
  end
end
