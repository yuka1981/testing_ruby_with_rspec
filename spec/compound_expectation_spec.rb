RSpec.describe 25 do
  it "can test for multiple matchers" do
    # expect(subject).to be_odd
    # expect(subject).to be > 20

    expect(subject).to be_odd and be > 20
  end

  # one line syntax
  it { is_expected.to be_odd and be > 20 }
end

RSpec.describe "catepiller" do
  it "supports multiple matcher on a single line" do
    expect(subject).to start_with("cat").and end_with("piller")
  end

  it { is_expected.to start_with("cat").and end_with("piller") }
end

RSpec.describe [:usa, :canada, :maxico] do
  it "can check for multiple passibilites" do
    expect(subject.sample).to eq(:usa).or eq(:canada).or eq(:maxico)
  end
end
