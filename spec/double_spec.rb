RSpec.describe "a random double" do
  it "only allows defined methods to be invoked" do
    # first arg => 
    # second arg => hash type, key: method name, value: return value/result
    # stuntman = double("Mr. Danger", fall_off_ladder: "Ouch", light_on_fire: true)

    # expect(stuntman.fall_off_ladder).to eq("Ouch")
    # expect(stuntman.light_on_fire).to eq(true)

    stuntman = double("Mr.Danger")
    # 沒有指定回傳值, 預設是 nil
    # allow(stuntman).to receive(:fall_off_ladder)
    # expect(stuntman.fall_off_ladder).to be_nil

    # allow(stuntman).to receive(:fall_off_ladder).and_return("Ouch")
    # expect(stuntman.fall_off_ladder).to eq("Ouch")

    allow(stuntman).to receive_messages(fall_off_ladder: "Ouch", light_on_fire: true)
    expect(stuntman.fall_off_ladder).to eq("Ouch")
    expect(stuntman.light_on_fire).to eq(true)
  end
end
