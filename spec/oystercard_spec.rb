require 'oystercard'

describe Oystercard do
  it "stores balance in the card" do
    expect(subject.balance).to eq(0)
  end
  
  describe "#change balance" do
    it "increases balance" do
      expect{subject.increase_balance 10}.to change{subject.balance}.by 10
    end
  end
end