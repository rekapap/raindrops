require 'raindrops'

describe Raindrops do
  describe '.convert' do
    subject(:described_module) { Raindrops }
    context 'constants' do
      it 'has a constant "PLING" with the string "Pling"' do
        expect(described_module::PLING).to eq('Pling')
      end
    end
    context 'Numbers with only one factor' do
      it "outputs 'Pling' if the input is a factor of 3" do
        expect(described_module.convert(3)).to eq('Pling')
      end
    end
    context 'Numbers with no factors' do
      it "outputs the number's digits' if the integer is not a factor of 3, 5 or 7" do
        expect(described_module.convert(1)).to eq('1')
      end
      it "outputs a negative number's digits' if the integer is not a factor of 3, 5 or 7" do
        expect(described_module.convert(-13)).to eq('13')
      end
    end
  end
end
