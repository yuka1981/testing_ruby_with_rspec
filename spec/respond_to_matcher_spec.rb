class HotChocolate 
  def drink
    "Delicious"
  end

  def discard
    "PLOP!"
  end

  def purchase(number)
    "Awsome, I pay with #{number}"
  end
end

RSpec.describe HotChocolate do
  it "confirms that an object can respond to a method" do
    expect(subject).to respond_to(:drink)
    expect(subject).to respond_to(:discard)
    expect(subject).to respond_to(:drink, :discard, :purchase)
  end
  
  it "confirms an object can respond to a method with arugments" do
    expect(subject).to respond_to(:purchase).with(1).arguments
  end

  it { is_expected.to respond_to(:drink, :discard) }
  it { is_expected.to respond_to(:purchase).with(1).arguments }
end
