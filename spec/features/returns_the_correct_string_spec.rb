require 'raindrops'

feature 'Returns the correct string' do
  scenario 'the input returns the digits if it\'s not a factorr of 3,5,7' do
    expect(Raindrops.convert(34)).to eq('34')
  end
  scenario 'for a number that is a factor of 7 it outputs \'Plong\'' do
    expect(Raindrops.convert(28)).to eq('Plong')
  end
end
