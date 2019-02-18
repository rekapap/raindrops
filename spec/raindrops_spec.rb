require 'raindrops'

describe Raindrops do
  describe '.convert' do
    subject(:described_module) { Raindrops }
    let(:pling) { described_module::PLING }
    let(:plang) { described_module::PLANG }
    context 'constants' do
      it 'has a constant "PLING" with the string "Pling"' do
        expect(described_module::PLING).to eq('Pling')
      end
      it 'has a constant "PLANG" with the string "Plang"' do
        expect(described_module::PLANG).to eq('Plang')
      end
      it 'has a constant "PLONG" with the string "Plong"' do
        expect(described_module::PLONG).to eq('Plong')
      end
    end
    context 'Numbers with only one factor' do
      it "outputs 'Pling' if the input is a factor of 3" do
        expect(described_module.convert(3)).to eq(pling)
      end
      it "outputs 'Pling' for negative input that is a factor of 3" do
        expect(described_module.convert(-6)).to eq(pling)
      end
      it "outputs 'Plang' if the input that is a factor of 5" do
        expect(described_module.convert(5)).to eq(plang)
      end
      it "outputs 'Plang' for negative input that is a factor of 5" do
        expect(described_module.convert(-25)).to eq(plang)
      end
      it "outputs 'Plong' if the input is a factor of 7" do
        expect(described_module.convert(7)).to eq('Plong')
      end
      it "outputs 'Plong' for negative input that is a factor of 7" do
        expect(described_module.convert(-14)).to eq('Plong')
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
