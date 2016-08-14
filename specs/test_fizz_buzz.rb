require 'minitest/spec'
require 'minitest/autorun'
require './fizz_buzz.rb'
describe FizzBuzz do
  before do
    @fizz_buzz = FizzBuzz.new
  end

  describe "BuzzFizz" do
    it "should print nil when given 0" do
      result = @fizz_buzz.fizz_buzz '0'
      assert_equal nil, result
    end
  end


    it 'should return Fizz when given 313' do
      result = @fizz_buzz.fizz_buzz '1,3,313'
      assert_equal 'Fizz', result
    end

    it 'should returnBuzz when given 5 52' do
      result = @fizz_buzz.fizz_buzz '[5,15]'
      assert_equal 'Buzz', result
    end

    it 'should return FizzBuzz FizzBuzz when 53' do
     result = @fizz_buzz.fizz_buzz '53'
      assert_equal 'Fizz', result
    end
end
