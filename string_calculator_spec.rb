require './string_calculator'

describe StringCalculator do

  describe '#add' do
    
    context 'when passed string with no characters or digits' do  
      it 'should print 0' do
        expect(described_class.new('').add).to eq(0)
      end
    end

    context 'when passed string with 1 as digit' do  
      it 'should print 1' do
        expect(described_class.new('1').add).to eq(1)
      end
    end

    context 'when passed string with 5 as digit' do  
      it 'should print 5' do
        expect(described_class.new('5').add).to eq(5)
      end
    end

    context 'when passed string with two digits' do  
      it 'should print 6' do
        expect(described_class.new('1,5').add).to eq(6)
      end
    end

    context 'when passed string with two digits along with some special characters like \n' do  
      it 'should print 6' do
        expect(described_class.new('1\n2,3').add).to eq(6)
      end
    end

    context 'when passed string with two digits along with some special characters like %%' do  
      it 'should print 6' do
        expect(described_class.new('1%%2,3').add).to eq(6)
      end
    end

    context 'when passed string with two digits along with some different delimiters like ;' do  
      it 'should print 3' do
        expect(described_class.new('//;\n1;2').add).to eq(3)
      end
    end

    context 'when passed string with some negative digits' do  
      it 'should raise exception with negative digits' do
        expect{ described_class.new('//[***]\n1,5,-5, -6').add }.to raise_error(StandardError, 'Negative numbers not allowed -5,-6')
      end
    end

    context 'when passed string with some negative digits' do  
      it 'should raise exception with negative digits' do
        expect{ described_class.new('//[***]\n1,5,-6').add }.to raise_error(StandardError, 'Negative numbers not allowed -6')
      end
    end
  end
end
