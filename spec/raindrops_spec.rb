require 'raindrops'

describe Raindrops do
  subject(:described_module) { Raindrops }
  let(:pling) { described_module::PLING }
  let(:plang) { described_module::PLANG }
  let(:plong) { described_module::PLONG }
  let(:pling_plang_plong) { 'PlingPlangPlong' }
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
  describe '.convert' do
    context 'Positive and negative numbers' do
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
          expect(described_module.convert(7)).to eq(plong)
        end
        it "outputs 'Plong' for negative input that is a factor of 7" do
          expect(described_module.convert(-14)).to eq(plong)
        end
      end
      context 'Numbers with multiple factors' do
        it "outputs 'PlingPlong' for an input that is a factor of 3 and 7, but not 5" do
          expect(described_module.convert(21)).to eq('PlingPlong')
        end
        it "outputs 'PlingPlang' for a negative input that is a factor of 3 and 5, but not 7" do
          expect(described_module.convert(-15)).to eq('PlingPlang')
        end
        it "outputs 'PlingPlangPlong' for an input that is a factor of 3, 5, and 7" do
          expect(described_module.convert(-105)).to eq(pling_plang_plong)
        end
        it "outputs 'PlangPlong' for an input that is a factor of 5 and 7" do
          expect(described_module.convert(-35)).to eq('PlangPlong')
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
      context 'Big values' do
        it 'can handle a big input, which is not a factor of 3, 5 or 7' do
          expect(described_module.convert(-2_147_483_647)).to eq('2147483647')
        end
        it 'can handle a big negative input, which is a factor' do
          expect(described_module.convert(-2_147_483_645)).to eq(plang)
        end
      end
    end
    context 'zero' do
      it 'is a factor of 3, 5 and 7, so it outputs PlingPlangPlong' do
        expect(described_module.convert(0)).to eq(pling_plang_plong)
      end
    end
  end
end
