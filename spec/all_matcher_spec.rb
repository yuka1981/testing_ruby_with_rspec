RSpec.describe "all matcher" do
  it "allows for aggregate checks" do
  #   [5, 7, 9].each do |value|
  #     expect(value).to be_odd
  #   end
    expect([5, 7, 9]).to all(be_odd)
    expect([4, 6, 8]).to all(be_even)
    expect([[], []]).to all(be_empty)
    expect([0, 0]).to all(be_zero)
    expect([5, 7, 9]).to all(be < 10)
  end

  describe [5, 7, 9] do
    it { is_expected.to all(be_odd)}
  end
end
