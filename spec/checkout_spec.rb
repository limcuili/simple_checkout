require 'checkout'

describe Checkout do

  describe '#view_price(item)' do
    it { is_expected.to respond_to(:view_price).with(1).argument }

    it 'tells me the price of bread' do
      expect{subject.view_price('bread')}.to output("0.89\n").to_stdout
    end
  end

  describe '#scan(item)' do
    it { is_expected.to respond_to(:scan).with(1).argument }

    it 'is initially an empty array' do
      expect(subject.scan('item')).to be_an_instance_of(Array)
    end

    it 'is able to scan milk and output milk hash' do
      expect(subject.scan('milk')).to match_array([{milk: 1.25}])
    end

    it 'recognises that an item is not in inventory' do
      expect(subject.scan('air')).to eq []
    end
  end


end
