require 'checkout'

describe Checkout do

  describe '#view_price(item)' do
    it { is_expected.to respond_to(:view_price).with(1).argument }

    it 'tells me the price of bread' do
      expect{subject.view_price('bread')}.to output("0.89\n").to_stdout
    end
  end


end
