RSpec.describe "predicate methods and predicate matchers" do
  it "can be tested with Ruby mathcer" do
    result = 10 / 2
    expect(result.odd?).to eq(true)
  end

  it "can be tested with predicate matchers" do
    expect([]).to be_empty
    expect(15).to be_odd
    expect(16/2).to be_even
    expect(0).to be_zero
  end

  describe 0 do
    it { is_expected.to be_zero }
    it { is_expected.not_to be_odd }
  end
end