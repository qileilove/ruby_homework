require 'minitest/spec'
require 'minitest/autorun'
require './number_to_string.rb'
describe NumberToString do
  before do
    @numberToString = NumberToString.new
  end

  describe 'NaN' do
      it 'should return zero when given NaN' do
        assert_equal 'zero', @numberToString.transfer('')
      end
    end
    describe 'number from 0 to 99' do
      it 'should transfer 0 to character' do
        transferred_number = @numberToString.transfer(0)
        assert_equal 'zero', transferred_number
      end
      it 'should transfer 20 to character' do
        transferred_number = @numberToString.transfer(20)
        assert_equal 'twenty', transferred_number
      end
      it 'should transfer 99 to ninety nine' do
        transferred_number = @numberToString.transfer(99)
        assert_equal 'ninety nine', transferred_number
      end
    end

    describe 'number from 100 to 999' do
      it 'should transfer 100 to one handred' do
        assert_equal 'one handred', @numberToString.transfer(100)
      end
      it 'should transfer 999 to nine handred ninety nine' do
        assert_equal 'nine handred ninety nine', @numberToString.transfer(999)
      end
    end

    describe 'number larger than 1000' do
      it 'should transfer 1000 to one thousand' do
        assert_equal 'one thousand', @numberToString.transfer(1000)
      end

      it 'should transfer 999999 to nine handred ninety nine thousand nine handred ninety nine' do
        assert_equal 'nine handred ninety nine thousand nine handred ninety nine', @numberToString.transfer(999999)
      end
    end
  end
