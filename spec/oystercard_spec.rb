require 'oystercard'

describe Oystercard do
  it "stores balance in the card" do
    expect(subject.balance).to eq(0)
  end
end