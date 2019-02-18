require 'raindrops'

describe Raindrops do
  describe '.convert' do
    subject(:described_module) { Raindrops }
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
