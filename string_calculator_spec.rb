require './string_calculator'

describe StringCalculator do

  describe '#add' do
    
    context 'when passed string with no characters or digits' do  
      it 'should print 0' do
        expect(described_class.new('').add).to eq(0)
      end
    end
  end
end
