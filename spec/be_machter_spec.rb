# falsy values -- false, nil
# truthy values -- everything else

RSpec.describe "be matchers" do
  it "cat test for truthiness" do
    expect(true).to be_truthy
    expect("hello").to be_truthy
    expect(5).to be_truthy
    expect(0).to be_truthy
    expect(-1).to be_truthy
    expect(3.14).to be_truthy
    expect([]).to be_truthy
    expect({}).to be_truthy
    expect([1, 2]).to be_truthy
    expect(:symble).to be_truthy
  end

  it "can test for falsiness" do
    expect(nil).to be_falsy
    expect(false).to be_falsy
  end

  it "can test for nil" do
    expect(nil).to be_nil
    
    my_hash = { a: 1 }
    expect(my_hash[:b]).to be_nil
    expect(my_hash[:b]).to be(nil)
    expect(my_hash[:b]).to eq(nil)
    expect(my_hash[:b]).to eql(nil)
    expect(my_hash[:b]).to equal(nil)
  end
  
  # one line syntax
  describe true do
    it { is_expected.to be_truthy }
  end
end