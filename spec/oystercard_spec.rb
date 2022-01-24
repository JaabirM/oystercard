require 'oystercard'

describe Oystercard do
  it "stores balance in the card" do
    expect(subject.balance).to eq(0)
  end
  
  it "does raise an error if max balance is exceeded" do
    expect { subject.increase_balance(Oystercard::MAX_BALANCE + 1) }.to raise_error("max balance of #{Oystercard::MAX_BALANCE} was exceeded")
  end

  describe "#change balance" do
    it "increases balance" do
      expect{ subject.increase_balance 10 }.to change{ subject.balance }.by 10
    end

    it "decreases balance" do
      expect{ subject.decrease_balance 10 }.to change{ subject.balance }.by -10
    end
  end
end