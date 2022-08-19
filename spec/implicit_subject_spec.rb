
# implicit subject, RSpec.describe 後面要接 class name, 不能是 string
RSpec.describe Hash do
  let(:my_hash) { {} }

  let(:subject) { Hash.new }

  it "should be return emtpy hash" do
    expect(subject).to eq({})
    subject[:some] = "else"
    expect(subject[:some]).to eq("else")
  end
end
