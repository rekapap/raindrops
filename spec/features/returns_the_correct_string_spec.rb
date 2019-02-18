require 'raindrops'

feature 'Returns the correct string' do
  scenario 'the input returns the digits if it\'s not a factorr of 3,5,7' do
    expect(Raindrops.convert(34)).to eq('34')
  end
end
